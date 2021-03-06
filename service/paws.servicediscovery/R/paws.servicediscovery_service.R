# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_handlers new_service
NULL

METADATA <- list(
  service_name = "servicediscovery",
  endpoints = list("*" = "servicediscovery.{region}.amazonaws.com", "cn-*" = "servicediscovery.{region}.amazonaws.com.cn"),
  service_id = "ServiceDiscovery",
  api_version = "2017-03-14",
  signing_name = NULL,
  json_version = "1.1",
  target_prefix = "Route53AutoNaming_v20170314"
)

HANDLERS <- new_handlers("jsonrpc", "v4")

service <- function() {
  return(new_service(METADATA, HANDLERS))
}

