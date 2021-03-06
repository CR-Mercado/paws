# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common populate
NULL

delete_thing_shadow_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(thingName = structure(logical(0), 
        tags = list(location = "uri", locationName = "thingName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_thing_shadow_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(payload = structure(logical(0), tags = list(type = "blob"))), 
        tags = list(type = "structure", payload = "payload"))
    return(populate(args, shape))
}

get_thing_shadow_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(thingName = structure(logical(0), 
        tags = list(location = "uri", locationName = "thingName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

get_thing_shadow_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(payload = structure(logical(0), tags = list(type = "blob"))), 
        tags = list(type = "structure", payload = "payload"))
    return(populate(args, shape))
}

publish_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(topic = structure(logical(0), tags = list(location = "uri", 
        locationName = "topic", type = "string")), qos = structure(logical(0), 
        tags = list(location = "querystring", locationName = "qos", 
            type = "integer", max = 1L, min = 0L)), payload = structure(logical(0), 
        tags = list(type = "blob"))), tags = list(type = "structure", 
        payload = "payload"))
    return(populate(args, shape))
}

publish_output <- function () 
{
    return(list())
}

update_thing_shadow_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(thingName = structure(logical(0), 
        tags = list(location = "uri", locationName = "thingName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
        payload = structure(logical(0), tags = list(type = "blob"))), 
        tags = list(type = "structure", payload = "payload"))
    return(populate(args, shape))
}

update_thing_shadow_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(payload = structure(logical(0), tags = list(type = "blob"))), 
        tags = list(type = "structure", payload = "payload"))
    return(populate(args, shape))
}
