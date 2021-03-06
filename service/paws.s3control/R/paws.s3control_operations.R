# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_operation new_request send_request
NULL

#' Removes the Public Access Block configuration for an Amazon Web Services account
#'
#' Removes the Public Access Block configuration for an Amazon Web Services account.
#'
#' @section Accepted Parameters:
#' ```
#' delete_public_access_block(
#'   AccountId = "string"
#' )
#' ```
#'
#' @param AccountId &#91;required&#93; The Account ID for the Amazon Web Services account whose Public Access Block configuration you want to remove.
#'
#' @export
delete_public_access_block <- function (AccountId) 
{
    op <- new_operation(name = "DeletePublicAccessBlock", http_method = "DELETE", 
        http_path = "/v20180820/configuration/publicAccessBlock", 
        paginator = list())
    input <- delete_public_access_block_input(AccountId = AccountId)
    output <- delete_public_access_block_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the Public Access Block configuration for an Amazon Web Services account
#'
#' Retrieves the Public Access Block configuration for an Amazon Web Services account.
#'
#' @section Accepted Parameters:
#' ```
#' get_public_access_block(
#'   AccountId = "string"
#' )
#' ```
#'
#' @param AccountId &#91;required&#93; The Account ID for the Amazon Web Services account whose Public Access Block configuration you want to retrieve.
#'
#' @export
get_public_access_block <- function (AccountId) 
{
    op <- new_operation(name = "GetPublicAccessBlock", http_method = "GET", 
        http_path = "/v20180820/configuration/publicAccessBlock", 
        paginator = list())
    input <- get_public_access_block_input(AccountId = AccountId)
    output <- get_public_access_block_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates or modifies the Public Access Block configuration for an Amazon Web Services account
#'
#' Creates or modifies the Public Access Block configuration for an Amazon Web Services account.
#'
#' @section Accepted Parameters:
#' ```
#' put_public_access_block(
#'   PublicAccessBlockConfiguration = list(
#'     BlockPublicAcls = TRUE|FALSE,
#'     IgnorePublicAcls = TRUE|FALSE,
#'     BlockPublicPolicy = TRUE|FALSE,
#'     RestrictPublicBuckets = TRUE|FALSE
#'   ),
#'   AccountId = "string"
#' )
#' ```
#'
#' @param PublicAccessBlockConfiguration &#91;required&#93; The Public Access Block configuration that you want to apply to this Amazon Web Services account.
#' @param AccountId &#91;required&#93; The Account ID for the Amazon Web Services account whose Public Access Block configuration you want to set.
#'
#' @export
put_public_access_block <- function (PublicAccessBlockConfiguration, 
    AccountId) 
{
    op <- new_operation(name = "PutPublicAccessBlock", http_method = "PUT", 
        http_path = "/v20180820/configuration/publicAccessBlock", 
        paginator = list())
    input <- put_public_access_block_input(PublicAccessBlockConfiguration = PublicAccessBlockConfiguration, 
        AccountId = AccountId)
    output <- put_public_access_block_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
