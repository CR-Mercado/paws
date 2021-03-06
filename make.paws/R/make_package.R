#' Make an R package for a given API
#'
#' @param api_name Name of the API to make a package for.
#' @param in_dir Directory containing API files.
#' @param out_dir Directory to
#'
#' @export
make_package <- function(api_name, in_dir, out_dir) {
  api <- read_api(api_name, in_dir)

  package <- package_name(api)
  package_path <- file.path(out_dir, package)
  r_path <- file.path(package_path, "R")

  version <- make_version(package_path)

  # Populate the package.
  write_skeleton(package_path)
  write_description(api, package_path, version)
  write_operations(api, r_path)
  write_interfaces(api, r_path)
  write_service(api, r_path)
  copy_customizations(api, r_path)
  write_tests(api, package_path)
  write_documentation(api, package_path)

  return(invisible(package))
}

#-------------------------------------------------------------------------------

# Make a package description.
write_description <- function(api, path, version) {
  description <- desc::desc(file.path(path, "DESCRIPTION"))
  contents <- list(
    Package = package_name(api),
    Title = make_title(api),
    Version = version,
    `Authors@R` = make_authors(),
    Description = make_description(api),
    Depends = "R (>= 3.4.0)",
    Imports = make_imports(),
    Suggests = "testthat",
    Remotes = "paws-r/paws/paws.common",
    License = "Apache License (>= 2.0)",
    Encoding = "UTF-8",
    LazyData = "true",
    Roxygen = 'list(markdown = TRUE, roclets = c("rd", "namespace", "collate"))'
  )
  for (key in names(contents)) {
    value <- contents[[key]]
    description$set(key, value)
  }
  description$normalize()
  description$write()
  return(TRUE)
}

# Generate the operations and write them to a file in the package.
write_operations <- function(api, path) {
  operations <- make_operations(api)
  package <- package_name(api)
  filename <- paste0(package, "_operations.R")
  operations <- add_edit_warning(operations)
  write_list(operations, file.path(path, filename))
}

# Generate the interfaces and write them to a file in the package.
write_interfaces <- function(api, path) {
  interfaces <- make_interfaces(api)
  package <- package_name(api)
  filename <- paste0(package, "_interfaces.R")
  interfaces <- add_edit_warning(interfaces)
  write_list(interfaces, file.path(path, filename))
}

# Generate the service info and write it to a file in the package.
write_service <- function(api, path) {
  service <- make_service(api)
  package <- package_name(api)
  filename <- paste0(package, "_service.R")
  service <- add_edit_warning(service)
  write_list(service, file.path(path, filename))
}

# Copy customizations for a given package, if there are any.
copy_customizations <- function(api, path) {
  path_in <- system_file("src", "customizations", package = methods::getPackageName())
  files <- list.files(path_in, full.names = TRUE)
  service <- tolower(struct_name(api))
  src_file <- files[grep(sprintf("^%s.R$", service), basename(files))]
  if (length(src_file) > 0) {
    package <- package_name(api)
    filename <- sprintf("%s_customizations.R", package)
    warning_text <- unlist(add_edit_warning(list(), new_line = T))
    write(warning_text, file = file.path(path, filename))
    file.append(file.path(path, filename), src_file)
  }
}

# Generate tests for the package and write them to the tests folder.
write_tests <- function(api, path) {
  package <- package_name(api)
  filename <- paste0("test_", package, ".R")
  test_path <- file.path(path, "tests")

  tests <- make_tests(api)
  tests <- add_edit_warning(tests)
  write_list(tests, file.path(test_path, "testthat", filename))
}

# Generate the package's documentation.
write_documentation <- function(api, path) {
  quietly(
      roxygen2::roxygenize(path)
  )
  return(TRUE)
}

# Add a Roxygen directive to the top of a file.
add_roxygen_directive <- function(text, directive) {
  header <- sprintf("#' %s\nNULL", directive)
  result <- c(header, text)
  return(result)
}

# Add a warning saying not to edit the generated file.
add_edit_warning <- function(text, new_line = FALSE) {
  warning <- "# This file is generated by make.paws. Please do not edit here."
  if (new_line) warning <- c(warning, "")
  result <- c(warning, text)
  return(result)
}

# Write a list of code objects to a file, separated by newlines. Create
# directories if necessary.
write_list <- function(list, file) {
  contents <- paste(list, collapse = "\n\n")
  path <- dirname(file)
  dir.create(path, showWarnings = FALSE, recursive = TRUE)
  write_utf8(contents, file)
}

#-------------------------------------------------------------------------------

# Make a package directory
write_skeleton <- function(path, overwrite = TRUE) {
  if (dir.exists(path) && overwrite) {
    unlink(path, recursive = TRUE, force = TRUE)
  }
  dir.create(file.path(path, "R"), recursive = TRUE, showWarnings = FALSE)
  use_description(path)
  use_namespace(path)
  use_package_doc(path)
  use_apl2_license(path)
  return(TRUE)
}

# Create a dummy DESCRIPTION file.
use_description <- function(path) {
  desc_path <- file.path(path, "DESCRIPTION")
  file.create(desc_path, showWarnings = FALSE)
}

# Create a dummy R file to make Roxygen generate package-level documentation.
use_package_doc <- function(path) {
  package <- methods::getPackageName()
  template <- system_file("templates/package.R", package = package)
  to <- file.path(path, "R", paste0(basename(path), "_package.R"))
  file.copy(template, to)
}

# Create a dummy NAMESPACE file.
use_namespace <- function(path) {
  package <- methods::getPackageName()
  template <- system_file("templates/NAMESPACE", package = package)
  to <- file.path(path, "NAMESPACE")
  file.copy(template, to)
}

# Add the APL2 license to the package.
use_apl2_license <- function(path) {
  description <- desc::desc(file.path(path, "DESCRIPTION"))
  description$set("License" = "Apache License (>= 2.0)")
  description$normalize
  description$write()
}

# Make a title for the generated package.
make_title <- function(api) {
  title <- api$metadata$serviceFullName
  if (is.null(title)) return("")
  return(title)
}

# Make a short description of the generated package.
make_description <- function(api) {
  if (is.null(api$documentation)) return("")

  documentation <- convert(api$documentation, wrap = FALSE)
  contains_period <- function(x) grepl("\\.", x)
  desc <- documentation[which.max(contains_period(documentation))]

  # If the description ends with a ":", e.g. "You can do the following:", then
  # remove the sentence, provided it is not the only sentence.
  if (endsWith(desc, ":")) {
    sentences <- strsplit(desc, "\\.")[[1]]
    if (length(sentences) > 1) {
      exclude_last <- sentences[1:(length(sentences)-1)]
      exclude_last <- paste0(exclude_last, ".")
      desc <- paste(exclude_last, collapse = " ")
    }
  }

  # Fix spaces before the last period. If a period appears on a line by
  # itself, the period gets removed, leaving an empty line, which makes the
  # DESCRIPTION file invalid.
  desc <- gsub(" +\\.", ".", desc)

  return(desc)
}

# Returns a version; the existing package's if present, otherwise a default.
make_version <- function(path) {
  version <- "0.0.0.9000"
  description <- file.path(path, "DESCRIPTION")
  if (file.exists(description)) {
    version <- tryCatch({
      desc::desc_get_version(description)
    }, error = function(e) version
    )
  }
  return(version)
}

# Return the authors from this package.
make_authors <- function(authors) {
  package <- methods::getPackageName()
  description <- utils::packageDescription(package)
  authors <- description$`Authors@R`
  return(authors)
}

# Get the list of R packages that will be used, to be included in each generated
# package's DESCRIPTION file Imports section.
make_imports <- function() {
  imports <- "paws.common"
  return(imports)
}
