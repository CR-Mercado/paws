# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_handlers new_service
NULL

METADATA <- list(
  service_name = "projects.iot1click",
  endpoints = list("*" = "projects.iot1click.{region}.amazonaws.com", "cn-*" = "projects.iot1click.{region}.amazonaws.com.cn"),
  service_id = "IoT 1Click Projects",
  api_version = "2018-05-14",
  signing_name = "iot1click",
  json_version = "1.1",
  target_prefix = ""
)

HANDLERS <- new_handlers("restjson", "v4")

service <- function() {
  return(new_service(METADATA, HANDLERS))
}

