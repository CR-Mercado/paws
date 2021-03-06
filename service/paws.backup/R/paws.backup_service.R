# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_handlers new_service
NULL

METADATA <- list(
  service_name = "backup",
  endpoints = list("*" = "backup.{region}.amazonaws.com", "cn-*" = "backup.{region}.amazonaws.com.cn"),
  service_id = "Backup",
  api_version = "2018-11-15",
  signing_name = NULL,
  json_version = "1.1",
  target_prefix = ""
)

HANDLERS <- new_handlers("restjson", "v4")

service <- function() {
  return(new_service(METADATA, HANDLERS))
}

