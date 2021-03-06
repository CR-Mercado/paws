# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_handlers new_service
NULL

METADATA <- list(
  service_name = "tagging",
  endpoints = list("*" = "tagging.{region}.amazonaws.com", "cn-*" = "tagging.{region}.amazonaws.com.cn"),
  service_id = "Resource Groups Tagging API",
  api_version = "2017-01-26",
  signing_name = NULL,
  json_version = "1.1",
  target_prefix = "ResourceGroupsTaggingAPI_20170126"
)

HANDLERS <- new_handlers("jsonrpc", "v4")

service <- function() {
  return(new_service(METADATA, HANDLERS))
}

