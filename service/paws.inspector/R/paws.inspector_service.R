# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_handlers new_service
NULL

METADATA <- list(
  service_name = "inspector",
  endpoints = list("*" = "inspector.{region}.amazonaws.com", "cn-*" = "inspector.{region}.amazonaws.com.cn"),
  service_id = "Inspector",
  api_version = "2016-02-16",
  signing_name = NULL,
  json_version = "1.1",
  target_prefix = "InspectorService"
)

HANDLERS <- new_handlers("jsonrpc", "v4")

service <- function() {
  return(new_service(METADATA, HANDLERS))
}

