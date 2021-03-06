# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_handlers new_service
NULL

METADATA <- list(
  service_name = "iot",
  endpoints = list("*" = "iot.{region}.amazonaws.com", "cn-*" = "iot.{region}.amazonaws.com.cn"),
  service_id = "IoT",
  api_version = "2015-05-28",
  signing_name = "execute-api",
  json_version = "",
  target_prefix = ""
)

HANDLERS <- new_handlers("restjson", "v4")

service <- function() {
  return(new_service(METADATA, HANDLERS))
}

