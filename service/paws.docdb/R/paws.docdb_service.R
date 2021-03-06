# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_handlers new_service
NULL

METADATA <- list(
  service_name = "docdb",
  endpoints = list("*" = "docdb.{region}.amazonaws.com", "cn-*" = "docdb.{region}.amazonaws.com.cn"),
  service_id = "DocDB",
  api_version = "2014-10-31",
  signing_name = "rds",
  json_version = "",
  target_prefix = ""
)

HANDLERS <- new_handlers("query", "v4")

service <- function() {
  return(new_service(METADATA, HANDLERS))
}

