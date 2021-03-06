# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_handlers new_service
NULL

METADATA <- list(
  service_name = "marketplacecommerceanalytics",
  endpoints = list("*" = "marketplacecommerceanalytics.{region}.amazonaws.com", "cn-*" = "marketplacecommerceanalytics.{region}.amazonaws.com.cn"),
  service_id = "Marketplace Commerce Analytics",
  api_version = "2015-07-01",
  signing_name = "marketplacecommerceanalytics",
  json_version = "1.1",
  target_prefix = "MarketplaceCommerceAnalytics20150701"
)

HANDLERS <- new_handlers("jsonrpc", "v4")

service <- function() {
  return(new_service(METADATA, HANDLERS))
}

