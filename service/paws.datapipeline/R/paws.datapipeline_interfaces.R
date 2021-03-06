# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common populate
NULL

activate_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        parameterValues = structure(list(structure(list(id = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 256L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            stringValue = structure(logical(0), tags = list(type = "string", 
                min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "structure"))), tags = list(type = "list")), 
        startTimestamp = structure(logical(0), tags = list(type = "timestamp"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

activate_pipeline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

add_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        tags = structure(list(structure(list(key = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 128L)), 
            value = structure(logical(0), tags = list(type = "string", 
                min = 0L, max = 256L))), tags = list(type = "structure"))), 
            tags = list(type = "list", min = 0L, max = 10L))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

add_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

create_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(name = structure(logical(0), tags = list(type = "string", 
        min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        uniqueId = structure(logical(0), tags = list(type = "string", 
            min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        description = structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        tags = structure(list(structure(list(key = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 128L)), 
            value = structure(logical(0), tags = list(type = "string", 
                min = 0L, max = 256L))), tags = list(type = "structure"))), 
            tags = list(type = "list", min = 0L, max = 10L))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

create_pipeline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

deactivate_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        cancelActive = structure(logical(0), tags = list(type = "boolean"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

deactivate_pipeline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_pipeline_output <- function () 
{
    return(list())
}

describe_objects_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        objectIds = structure(list(structure(logical(0), tags = list(type = "string", 
            min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "list")), evaluateExpressions = structure(logical(0), 
            tags = list(type = "boolean")), marker = structure(logical(0), 
            tags = list(type = "string", min = 0L, max = 1024L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_objects_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineObjects = structure(list(structure(list(id = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        name = structure(logical(0), tags = list(type = "string", 
            min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        fields = structure(list(structure(list(key = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 256L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            stringValue = structure(logical(0), tags = list(type = "string", 
                min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            refValue = structure(logical(0), tags = list(type = "string", 
                min = 1L, max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "structure"))), tags = list(type = "list"))), 
        tags = list(type = "structure"))), tags = list(type = "list")), 
        marker = structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        hasMoreResults = structure(logical(0), tags = list(type = "boolean"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_pipelines_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineIds = structure(list(structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
        tags = list(type = "list"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_pipelines_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineDescriptionList = structure(list(structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        name = structure(logical(0), tags = list(type = "string", 
            min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        fields = structure(list(structure(list(key = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 256L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            stringValue = structure(logical(0), tags = list(type = "string", 
                min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            refValue = structure(logical(0), tags = list(type = "string", 
                min = 1L, max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "structure"))), tags = list(type = "list")), 
        description = structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        tags = structure(list(structure(list(key = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 128L)), 
            value = structure(logical(0), tags = list(type = "string", 
                min = 0L, max = 256L))), tags = list(type = "structure"))), 
            tags = list(type = "list", min = 0L, max = 10L))), 
        tags = list(type = "structure"))), tags = list(type = "list"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

evaluate_expression_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        objectId = structure(logical(0), tags = list(type = "string", 
            min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        expression = structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 20971520L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

evaluate_expression_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(evaluatedExpression = structure(logical(0), 
        tags = list(type = "string", min = 0L, max = 20971520L, 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

get_pipeline_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        version = structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

get_pipeline_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineObjects = structure(list(structure(list(id = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        name = structure(logical(0), tags = list(type = "string", 
            min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        fields = structure(list(structure(list(key = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 256L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            stringValue = structure(logical(0), tags = list(type = "string", 
                min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            refValue = structure(logical(0), tags = list(type = "string", 
                min = 1L, max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "structure"))), tags = list(type = "list"))), 
        tags = list(type = "structure"))), tags = list(type = "list")), 
        parameterObjects = structure(list(structure(list(id = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 256L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            attributes = structure(list(structure(list(key = structure(logical(0), 
                tags = list(type = "string", min = 1L, max = 256L, 
                  pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                stringValue = structure(logical(0), tags = list(type = "string", 
                  min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
                tags = list(type = "structure"))), tags = list(type = "list"))), 
            tags = list(type = "structure"))), tags = list(type = "list")), 
        parameterValues = structure(list(structure(list(id = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 256L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            stringValue = structure(logical(0), tags = list(type = "string", 
                min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "structure"))), tags = list(type = "list"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

list_pipelines_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(marker = structure(logical(0), tags = list(type = "string", 
        min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

list_pipelines_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineIdList = structure(list(structure(list(id = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        name = structure(logical(0), tags = list(type = "string", 
            min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
        tags = list(type = "structure"))), tags = list(type = "list")), 
        marker = structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        hasMoreResults = structure(logical(0), tags = list(type = "boolean"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

poll_for_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(workerGroup = structure(logical(0), 
        tags = list(type = "string", min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        hostname = structure(logical(0), tags = list(type = "string", 
            min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        instanceIdentity = structure(list(document = structure(logical(0), 
            tags = list(type = "string", min = 0L, max = 1024L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            signature = structure(logical(0), tags = list(type = "string", 
                min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "structure"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

poll_for_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(taskObject = structure(list(taskId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 2048L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        pipelineId = structure(logical(0), tags = list(type = "string", 
            min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        attemptId = structure(logical(0), tags = list(type = "string", 
            min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        objects = structure(list(structure(list(id = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 1024L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            name = structure(logical(0), tags = list(type = "string", 
                min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            fields = structure(list(structure(list(key = structure(logical(0), 
                tags = list(type = "string", min = 1L, max = 256L, 
                  pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                stringValue = structure(logical(0), tags = list(type = "string", 
                  min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                refValue = structure(logical(0), tags = list(type = "string", 
                  min = 1L, max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
                tags = list(type = "structure"))), tags = list(type = "list"))), 
            tags = list(type = "structure"))), tags = list(type = "map"))), 
        tags = list(type = "structure"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

put_pipeline_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        pipelineObjects = structure(list(structure(list(id = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 1024L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            name = structure(logical(0), tags = list(type = "string", 
                min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            fields = structure(list(structure(list(key = structure(logical(0), 
                tags = list(type = "string", min = 1L, max = 256L, 
                  pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                stringValue = structure(logical(0), tags = list(type = "string", 
                  min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                refValue = structure(logical(0), tags = list(type = "string", 
                  min = 1L, max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
                tags = list(type = "structure"))), tags = list(type = "list"))), 
            tags = list(type = "structure"))), tags = list(type = "list")), 
        parameterObjects = structure(list(structure(list(id = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 256L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            attributes = structure(list(structure(list(key = structure(logical(0), 
                tags = list(type = "string", min = 1L, max = 256L, 
                  pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                stringValue = structure(logical(0), tags = list(type = "string", 
                  min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
                tags = list(type = "structure"))), tags = list(type = "list"))), 
            tags = list(type = "structure"))), tags = list(type = "list")), 
        parameterValues = structure(list(structure(list(id = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 256L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            stringValue = structure(logical(0), tags = list(type = "string", 
                min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "structure"))), tags = list(type = "list"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

put_pipeline_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(validationErrors = structure(list(structure(list(id = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        errors = structure(list(structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 10000L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "list"))), tags = list(type = "structure"))), 
        tags = list(type = "list")), validationWarnings = structure(list(structure(list(id = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        warnings = structure(list(structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 10000L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "list"))), tags = list(type = "structure"))), 
        tags = list(type = "list")), errored = structure(logical(0), 
        tags = list(type = "boolean"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

query_objects_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        query = structure(list(selectors = structure(list(structure(list(fieldName = structure(logical(0), 
            tags = list(type = "string", min = 0L, max = 1024L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            operator = structure(list(type = structure(logical(0), 
                tags = list(type = "string", enum = c("EQ", "REF_EQ", 
                  "LE", "GE", "BETWEEN"))), values = structure(list(structure(logical(0), 
                tags = list(type = "string", min = 0L, max = 1024L, 
                  pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
                tags = list(type = "list"))), tags = list(type = "structure"))), 
            tags = list(type = "structure"))), tags = list(type = "list"))), 
            tags = list(type = "structure")), sphere = structure(logical(0), 
            tags = list(type = "string", min = 0L, max = 1024L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        marker = structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        limit = structure(logical(0), tags = list(type = "integer"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

query_objects_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ids = structure(list(structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
        tags = list(type = "list")), marker = structure(logical(0), 
        tags = list(type = "string", min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        hasMoreResults = structure(logical(0), tags = list(type = "boolean"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

remove_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        tagKeys = structure(list(structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "list"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

remove_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

report_task_progress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(taskId = structure(logical(0), tags = list(type = "string", 
        min = 1L, max = 2048L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        fields = structure(list(structure(list(key = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 256L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            stringValue = structure(logical(0), tags = list(type = "string", 
                min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            refValue = structure(logical(0), tags = list(type = "string", 
                min = 1L, max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "structure"))), tags = list(type = "list"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

report_task_progress_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(canceled = structure(logical(0), 
        tags = list(type = "boolean"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

report_task_runner_heartbeat_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(taskrunnerId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        workerGroup = structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        hostname = structure(logical(0), tags = list(type = "string", 
            min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

report_task_runner_heartbeat_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(terminate = structure(logical(0), 
        tags = list(type = "boolean"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

set_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        objectIds = structure(list(structure(logical(0), tags = list(type = "string", 
            min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "list")), status = structure(logical(0), 
            tags = list(type = "string", min = 0L, max = 1024L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

set_status_output <- function () 
{
    return(list())
}

set_task_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(taskId = structure(logical(0), tags = list(type = "string", 
        min = 1L, max = 2048L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        taskStatus = structure(logical(0), tags = list(type = "string", 
            enum = c("FINISHED", "FAILED", "FALSE"))), errorId = structure(logical(0), 
            tags = list(type = "string", min = 0L, max = 1024L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        errorMessage = structure(logical(0), tags = list(type = "string")), 
        errorStackTrace = structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

set_task_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

validate_pipeline_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(pipelineId = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        pipelineObjects = structure(list(structure(list(id = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 1024L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            name = structure(logical(0), tags = list(type = "string", 
                min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            fields = structure(list(structure(list(key = structure(logical(0), 
                tags = list(type = "string", min = 1L, max = 256L, 
                  pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                stringValue = structure(logical(0), tags = list(type = "string", 
                  min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                refValue = structure(logical(0), tags = list(type = "string", 
                  min = 1L, max = 256L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
                tags = list(type = "structure"))), tags = list(type = "list"))), 
            tags = list(type = "structure"))), tags = list(type = "list")), 
        parameterObjects = structure(list(structure(list(id = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 256L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            attributes = structure(list(structure(list(key = structure(logical(0), 
                tags = list(type = "string", min = 1L, max = 256L, 
                  pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                stringValue = structure(logical(0), tags = list(type = "string", 
                  min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
                tags = list(type = "structure"))), tags = list(type = "list"))), 
            tags = list(type = "structure"))), tags = list(type = "list")), 
        parameterValues = structure(list(structure(list(id = structure(logical(0), 
            tags = list(type = "string", min = 1L, max = 256L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            stringValue = structure(logical(0), tags = list(type = "string", 
                min = 0L, max = 10240L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "structure"))), tags = list(type = "list"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

validate_pipeline_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(validationErrors = structure(list(structure(list(id = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        errors = structure(list(structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 10000L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "list"))), tags = list(type = "structure"))), 
        tags = list(type = "list")), validationWarnings = structure(list(structure(list(id = structure(logical(0), 
        tags = list(type = "string", min = 1L, max = 1024L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        warnings = structure(list(structure(logical(0), tags = list(type = "string", 
            min = 0L, max = 10000L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"))), 
            tags = list(type = "list"))), tags = list(type = "structure"))), 
        tags = list(type = "list")), errored = structure(logical(0), 
        tags = list(type = "boolean"))), tags = list(type = "structure"))
    return(populate(args, shape))
}
