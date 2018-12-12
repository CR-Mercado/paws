#' @include paws.s3_service.R
NULL

################################################################################
# update_endpoint_for_s3_config

bucket_name_from_req_params <- function(request) {
  request_params <- request$params
  bucket <- request_params["Bucket"]

  if (is.null(bucket)) return(NULL)

  bucket_name <- bucket[[1]]

  return(bucket_name)
}

move_bucket_to_host <- function(url, bucket) {
  url$host <- paste0(bucket, ".", url$host)
  url$path <- gsub("/\\{Bucket\\}", "", url$path)

  if (url$path == "") {
    url$path = "/"
  }

  return(url)
}

update_endpoint_for_s3_config <- function(request) {
  bucket_name <- bucket_name_from_req_params(request)

  if (is.null(bucket_name)) return(request)

  request$http_request$url <-
    move_bucket_to_host(request$http_request$url, bucket_name)

  return(request)
}

################################################################################
# contentMD5

content_md5 <- function(request) {
  operation_name <- request$operation$name
  
  if (!(operation_name %in% c("PutBucketCors", "PutBucketLifecycle", 
                              "PutBucketPolicy", "PutBucketTagging",
                              "DeleteObjects",
                              "PutBucketLifecycleConfiguration",
                              "PutBucketReplication", "PutObject",
                              "UploadPart"))) {return(request)}

  body <- request$body

  hash <- digest::digest(body, serialize = FALSE, raw = TRUE)

  base64_hash <- base64enc::base64encode(hash)

  request$http_request$header$`Content-Md5` <- base64_hash

  return(request)

}

################################################################################

HANDLERS$build <- add_handlers_front(HANDLERS$build,
                                     update_endpoint_for_s3_config)

HANDLERS$build <- add_handlers_back(HANDLERS$build,
                                     content_md5)