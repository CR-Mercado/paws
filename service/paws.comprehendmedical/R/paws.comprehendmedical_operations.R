# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_operation new_request send_request
NULL

#' Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information 
#'
#' Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information .
#'
#' @section Accepted Parameters:
#' ```
#' detect_entities(
#'   Text = "string"
#' )
#' ```
#'
#' @param Text &#91;required&#93; A UTF-8 text string containing the clinical content being examined for entities. Each string must contain fewer than 20,000 bytes of characters.
#'
#' @export
detect_entities <- function (Text) 
{
    op <- new_operation(name = "DetectEntities", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detect_entities_input(Text = Text)
    output <- detect_entities_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inspects the clinical text for personal health information (PHI) entities and entity category, location, and confidence score on that information
#'
#' Inspects the clinical text for personal health information (PHI) entities and entity category, location, and confidence score on that information.
#'
#' @section Accepted Parameters:
#' ```
#' detect_phi(
#'   Text = "string"
#' )
#' ```
#'
#' @param Text &#91;required&#93; A UTF-8 text string containing the clinical content being examined for PHI entities. Each string must contain fewer than 20,000 bytes of characters.
#'
#' @export
detect_phi <- function (Text) 
{
    op <- new_operation(name = "DetectPHI", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detect_phi_input(Text = Text)
    output <- detect_phi_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
