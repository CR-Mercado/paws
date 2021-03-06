# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_handlers new_service
NULL

METADATA <- list(
  service_name = "pinpointemail",
  endpoints = list("*" = "pinpointemail.{region}.amazonaws.com", "cn-*" = "pinpointemail.{region}.amazonaws.com.cn"),
  service_id = "Pinpoint Email",
  api_version = "2018-07-26",
  signing_name = "ses",
  json_version = "1.1",
  target_prefix = "com.amazonaws.services.pinpoint.email"
)

HANDLERS <- new_handlers("restjson", "v4")

service <- function() {
  return(new_service(METADATA, HANDLERS))
}

