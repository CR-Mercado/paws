# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_handlers new_service
NULL

METADATA <- list(
  service_name = "cloudsearch",
  endpoints = list("*" = "cloudsearch.{region}.amazonaws.com", "cn-*" = "cloudsearch.{region}.amazonaws.com.cn"),
  service_id = "CloudSearch",
  api_version = "2013-01-01",
  signing_name = NULL,
  json_version = "",
  target_prefix = ""
)

HANDLERS <- new_handlers("query", "v4")

service <- function() {
  return(new_service(METADATA, HANDLERS))
}

