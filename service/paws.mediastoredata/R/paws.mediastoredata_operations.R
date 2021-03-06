# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_operation new_request send_request
NULL

#' Deletes an object at the specified path
#'
#' Deletes an object at the specified path.
#'
#' @section Accepted Parameters:
#' ```
#' delete_object(
#'   Path = "string"
#' )
#' ```
#'
#' @param Path &#91;required&#93; The path (including the file name) where the object is stored in the container. Format: \<folder name\>/\<folder name\>/\<file name\>
#'
#' @export
delete_object <- function (Path) 
{
    op <- new_operation(name = "DeleteObject", http_method = "DELETE", 
        http_path = "/{Path+}", paginator = list())
    input <- delete_object_input(Path = Path)
    output <- delete_object_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the headers for an object at the specified path
#'
#' Gets the headers for an object at the specified path.
#'
#' @section Accepted Parameters:
#' ```
#' describe_object(
#'   Path = "string"
#' )
#' ```
#'
#' @param Path &#91;required&#93; The path (including the file name) where the object is stored in the container. Format: \<folder name\>/\<folder name\>/\<file name\>
#'
#' @export
describe_object <- function (Path) 
{
    op <- new_operation(name = "DescribeObject", http_method = "HEAD", 
        http_path = "/{Path+}", paginator = list())
    input <- describe_object_input(Path = Path)
    output <- describe_object_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Downloads the object at the specified path
#'
#' Downloads the object at the specified path.
#'
#' @section Accepted Parameters:
#' ```
#' get_object(
#'   Path = "string",
#'   Range = "string"
#' )
#' ```
#'
#' @param Path &#91;required&#93; The path (including the file name) where the object is stored in the container. Format: \<folder name\>/\<folder name\>/\<file name\>
#' 
#' For example, to upload the file `mlaw.avi` to the folder path `premium\canada` in the container `movies`, enter the path `premium/canada/mlaw.avi`.
#' 
#' Do not include the container name in this path.
#' 
#' If the path includes any folders that don\'t exist yet, the service creates them. For example, suppose you have an existing `premium/usa` subfolder. If you specify `premium/canada`, the service creates a `canada` subfolder in the `premium` folder. You then have two subfolders, `usa` and `canada`, in the `premium` folder.
#' 
#' There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore.
#' 
#' For more information about folders and how they exist in a container, see the [AWS Elemental MediaStore User Guide](http://docs.aws.amazon.com/mediastore/latest/ug/).
#' 
#' The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension.
#' @param Range The range bytes of an object to retrieve. For more information about the `Range` header, go to <http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35>.
#'
#' @export
get_object <- function (Path, Range = NULL) 
{
    op <- new_operation(name = "GetObject", http_method = "GET", 
        http_path = "/{Path+}", paginator = list())
    input <- get_object_input(Path = Path, Range = Range)
    output <- get_object_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides a list of metadata entries about folders and objects in the specified folder
#'
#' Provides a list of metadata entries about folders and objects in the specified folder.
#'
#' @section Accepted Parameters:
#' ```
#' list_items(
#'   Path = "string",
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @param Path The path in the container from which to retrieve items. Format: \<folder name\>/\<folder name\>/\<file name\>
#' @param MaxResults The maximum number of results to return per API request. For example, you submit a `ListItems` request with `MaxResults` set at 500. Although 2,000 items match your request, the service returns no more than the first 500 items. (The service also returns a `NextToken` value that you can use to fetch the next batch of results.) The service might return fewer results than the `MaxResults` value.
#' 
#' If `MaxResults` is not included in the request, the service defaults to pagination with a maximum of 1,000 results per page.
#' @param NextToken The token that identifies which batch of results that you want to see. For example, you submit a `ListItems` request with `MaxResults` set at 500. The service returns the first batch of results (up to 500) and a `NextToken` value. To see the next batch of results, you can submit the `ListItems` request a second time and specify the `NextToken` value.
#' 
#' Tokens expire after 15 minutes.
#'
#' @export
list_items <- function (Path = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- new_operation(name = "ListItems", http_method = "GET", 
        http_path = "/", paginator = list())
    input <- list_items_input(Path = Path, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_items_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Uploads an object to the specified path
#'
#' Uploads an object to the specified path. Object sizes are limited to 25 MB.
#'
#' @section Accepted Parameters:
#' ```
#' put_object(
#'   Body = raw,
#'   Path = "string",
#'   ContentType = "string",
#'   CacheControl = "string",
#'   StorageClass = "TEMPORAL"
#' )
#' ```
#'
#' @param Body &#91;required&#93; The bytes to be stored.
#' @param Path &#91;required&#93; The path (including the file name) where the object is stored in the container. Format: \<folder name\>/\<folder name\>/\<file name\>
#' 
#' For example, to upload the file `mlaw.avi` to the folder path `premium\canada` in the container `movies`, enter the path `premium/canada/mlaw.avi`.
#' 
#' Do not include the container name in this path.
#' 
#' If the path includes any folders that don\'t exist yet, the service creates them. For example, suppose you have an existing `premium/usa` subfolder. If you specify `premium/canada`, the service creates a `canada` subfolder in the `premium` folder. You then have two subfolders, `usa` and `canada`, in the `premium` folder.
#' 
#' There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore.
#' 
#' For more information about folders and how they exist in a container, see the [AWS Elemental MediaStore User Guide](http://docs.aws.amazon.com/mediastore/latest/ug/).
#' 
#' The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension.
#' @param ContentType The content type of the object.
#' @param CacheControl An optional `CacheControl` header that allows the caller to control the object\'s cache behavior. Headers can be passed in as specified in the HTTP at <https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9>.
#' 
#' Headers with a custom user-defined value are also accepted.
#' @param StorageClass Indicates the storage class of a `Put` request. Defaults to high-performance temporal storage class, and objects are persisted into durable storage shortly after being received.
#'
#' @export
put_object <- function (Body, Path, ContentType = NULL, CacheControl = NULL, 
    StorageClass = NULL) 
{
    op <- new_operation(name = "PutObject", http_method = "PUT", 
        http_path = "/{Path+}", paginator = list())
    input <- put_object_input(Body = Body, Path = Path, ContentType = ContentType, 
        CacheControl = CacheControl, StorageClass = StorageClass)
    output <- put_object_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
