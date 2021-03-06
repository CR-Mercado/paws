# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_handlers new_service
NULL

METADATA <- list(
  service_name = "data.mediastore",
  endpoints = list("*" = "data.mediastore.{region}.amazonaws.com", "cn-*" = "data.mediastore.{region}.amazonaws.com.cn"),
  service_id = "MediaStore Data",
  api_version = "2017-09-01",
  signing_name = "mediastore",
  json_version = "",
  target_prefix = ""
)

HANDLERS <- new_handlers("restjson", "v4")

service <- function() {
  return(new_service(METADATA, HANDLERS))
}

