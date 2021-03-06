# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common populate
NULL

delete_playback_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), tags = list(location = "uri", 
        locationName = "Name", type = "string"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_playback_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

get_playback_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), tags = list(location = "uri", 
        locationName = "Name", type = "string"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

get_playback_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AdDecisionServerUrl = structure(logical(0), 
        tags = list(type = "string")), CdnConfiguration = structure(list(AdSegmentUrlPrefix = structure(logical(0), 
        tags = list(type = "string")), ContentSegmentUrlPrefix = structure(logical(0), 
        tags = list(type = "string"))), tags = list(type = "structure")), 
        DashConfiguration = structure(list(ManifestEndpointPrefix = structure(logical(0), 
            tags = list(type = "string")), MpdLocation = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure")), 
        HlsConfiguration = structure(list(ManifestEndpointPrefix = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure")), 
        Name = structure(logical(0), tags = list(type = "string")), 
        PlaybackEndpointPrefix = structure(logical(0), tags = list(type = "string")), 
        SessionInitializationEndpointPrefix = structure(logical(0), 
            tags = list(type = "string")), SlateAdUrl = structure(logical(0), 
            tags = list(type = "string")), TranscodeProfileName = structure(logical(0), 
            tags = list(type = "string")), VideoContentSourceUrl = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

list_playback_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        tags = list(location = "querystring", locationName = "MaxResults", 
            type = "integer", min = 1L, max = 100L)), NextToken = structure(logical(0), 
        tags = list(location = "querystring", locationName = "NextToken", 
            type = "string"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

list_playback_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Items = structure(list(structure(list(AdDecisionServerUrl = structure(logical(0), 
        tags = list(type = "string")), CdnConfiguration = structure(list(AdSegmentUrlPrefix = structure(logical(0), 
        tags = list(type = "string")), ContentSegmentUrlPrefix = structure(logical(0), 
        tags = list(type = "string"))), tags = list(type = "structure")), 
        Name = structure(logical(0), tags = list(type = "string")), 
        SlateAdUrl = structure(logical(0), tags = list(type = "string")), 
        VideoContentSourceUrl = structure(logical(0), tags = list(type = "string"))), 
        tags = list(type = "structure"))), tags = list(type = "list")), 
        NextToken = structure(logical(0), tags = list(type = "string"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

put_playback_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AdDecisionServerUrl = structure(logical(0), 
        tags = list(type = "string")), CdnConfiguration = structure(list(AdSegmentUrlPrefix = structure(logical(0), 
        tags = list(type = "string")), ContentSegmentUrlPrefix = structure(logical(0), 
        tags = list(type = "string"))), tags = list(type = "structure")), 
        DashConfiguration = structure(list(MpdLocation = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure")), 
        Name = structure(logical(0), tags = list(type = "string")), 
        SlateAdUrl = structure(logical(0), tags = list(type = "string")), 
        TranscodeProfileName = structure(logical(0), tags = list(type = "string")), 
        VideoContentSourceUrl = structure(logical(0), tags = list(type = "string"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

put_playback_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AdDecisionServerUrl = structure(logical(0), 
        tags = list(type = "string")), CdnConfiguration = structure(list(AdSegmentUrlPrefix = structure(logical(0), 
        tags = list(type = "string")), ContentSegmentUrlPrefix = structure(logical(0), 
        tags = list(type = "string"))), tags = list(type = "structure")), 
        DashConfiguration = structure(list(ManifestEndpointPrefix = structure(logical(0), 
            tags = list(type = "string")), MpdLocation = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure")), 
        HlsConfiguration = structure(list(ManifestEndpointPrefix = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure")), 
        Name = structure(logical(0), tags = list(type = "string")), 
        PlaybackEndpointPrefix = structure(logical(0), tags = list(type = "string")), 
        SessionInitializationEndpointPrefix = structure(logical(0), 
            tags = list(type = "string")), SlateAdUrl = structure(logical(0), 
            tags = list(type = "string")), TranscodeProfileName = structure(logical(0), 
            tags = list(type = "string")), VideoContentSourceUrl = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure"))
    return(populate(args, shape))
}
