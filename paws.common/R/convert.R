# Convert an R value to a value acceptable by the AWS API.
convert_type <- function(value) {
  t <- tag_get(value, "type")
  fn <- switch(
    t,
    blob = convert_blob,
    boolean = convert_boolean,
    float = as.character,
    integer = as.character,
    string = as.character,
    timestamp = convert_timestamp,
    as.character
  )
  string <- fn(value)
  return(string)
}

# Convert a value to a base64-encoded string.
# e.g. "foo" (raw: 66 6f 6f) -> "Zm9v".
convert_blob <- function(blob) {
  string <- raw_to_base64(blob)
  return(string)
}

# Convert a "truthy" R value to a string.
# e.g. TRUE -> "true".
convert_boolean <- function(boolean) {
  if (boolean) {
    return("true")
  } else {
    return("false")
  }
}

# Convert an R datetime to a string.
convert_timestamp <- function(timestamp, format = NULL) {
  if (is.null(format)) {
    format <- tag_get(timestamp, "timestampFormat")
  }
  format_string <- timestamp_format(format)
  if (format_string != "") {
    string <- format(timestamp, format = format_string)
  } else {
    string <- as.character(as.numeric(timestamp))
  }
  return(string)
}

#-------------------------------------------------------------------------------

# Convert a base64-encoded value to a string.
# e.g. "Zm9v" -> "foo".
base64_to_utf8 <- function(value) {
  if (length(value) == 0) return(character(0))
  return(intToUtf8(base64enc::base64decode(value)))
}

# Convert a string to a base64-encoded value.
# e.g. "foo" (raw: 66 6f 6f) -> "Zm9v".
raw_to_base64 <- function(value) {
  if (length(value) == 0) return(character(0))
  return(base64enc::base64encode(value))
}

# Return a strptime format string for a given timestamp format.
timestamp_format <- function(name) {
  format_string <- switch(
    name,
    iso8601 = "%Y-%m-%dT%H:%M:%SZ",
    rfc822 = "%a, %d %b %Y %H:%M:%S %Z",
    unix = "%Y-%m-%dT%H:%M:%SZ",
    ""
  )
  return(format_string)
}
