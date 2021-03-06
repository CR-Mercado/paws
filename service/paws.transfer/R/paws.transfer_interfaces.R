# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common populate
NULL

create_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityProviderDetails = structure(list(Url = structure(logical(0), 
        tags = list(type = "string")), InvocationRole = structure(logical(0), 
        tags = list(type = "string", pattern = "arn:.*role/.*"))), 
        tags = list(type = "structure")), IdentityProviderType = structure(logical(0), 
        tags = list(type = "string", enum = c("SERVICE_MANAGED", 
            "API_GATEWAY"))), LoggingRole = structure(logical(0), 
        tags = list(type = "string", pattern = "arn:.*role/.*")), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            tags = list(type = "string")), Value = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure"))), 
            tags = list(type = "list", max = 50L, min = 1L))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

create_server_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

create_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HomeDirectory = structure(logical(0), 
        tags = list(type = "string", max = 1024L, pattern = "^$|/.*")), 
        Policy = structure(logical(0), tags = list(type = "string")), 
        Role = structure(logical(0), tags = list(type = "string", 
            pattern = "arn:.*role/.*")), ServerId = structure(logical(0), 
            tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$")), 
        SshPublicKeyBody = structure(logical(0), tags = list(type = "string", 
            max = 2048L, pattern = "^ssh-rsa\\s+[A-Za-z0-9+/]+[=]{0,3}(\\s+.+)?\\s*$")), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            tags = list(type = "string")), Value = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure"))), 
            tags = list(type = "list", max = 50L, min = 1L)), 
        UserName = structure(logical(0), tags = list(type = "string", 
            pattern = "^[a-z0-9]{3,32}$"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

create_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$")), 
        UserName = structure(logical(0), tags = list(type = "string", 
            pattern = "^[a-z0-9]{3,32}$"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_server_output <- function () 
{
    return(list())
}

delete_ssh_public_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$")), 
        SshPublicKeyId = structure(logical(0), tags = list(type = "string", 
            pattern = "^key-[0-9a-f]{17}$")), UserName = structure(logical(0), 
            tags = list(type = "string", pattern = "^[a-z0-9]{3,32}$"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_ssh_public_key_output <- function () 
{
    return(list())
}

delete_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$")), 
        UserName = structure(logical(0), tags = list(type = "string", 
            pattern = "^[a-z0-9]{3,32}$"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_user_output <- function () 
{
    return(list())
}

describe_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_server_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Server = structure(list(Arn = structure(logical(0), 
        tags = list(type = "string", max = 1600L, min = 20L)), 
        IdentityProviderDetails = structure(list(Url = structure(logical(0), 
            tags = list(type = "string")), InvocationRole = structure(logical(0), 
            tags = list(type = "string", pattern = "arn:.*role/.*"))), 
            tags = list(type = "structure")), IdentityProviderType = structure(logical(0), 
            tags = list(type = "string", enum = c("SERVICE_MANAGED", 
                "API_GATEWAY"))), LoggingRole = structure(logical(0), 
            tags = list(type = "string", pattern = "arn:.*role/.*")), 
        ServerId = structure(logical(0), tags = list(type = "string", 
            pattern = "^s-([0-9a-f]{17})$")), State = structure(logical(0), 
            tags = list(type = "string", enum = c("OFFLINE", 
                "ONLINE", "STARTING", "STOPPING", "START_FAILED", 
                "STOP_FAILED"))), Tags = structure(list(structure(list(Key = structure(logical(0), 
            tags = list(type = "string")), Value = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure"))), 
            tags = list(type = "list", max = 50L, min = 1L)), 
        UserCount = structure(logical(0), tags = list(type = "integer"))), 
        tags = list(type = "structure"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$")), 
        UserName = structure(logical(0), tags = list(type = "string", 
            pattern = "^[a-z0-9]{3,32}$"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$")), 
        User = structure(list(Arn = structure(logical(0), tags = list(type = "string", 
            max = 1600L, min = 20L)), HomeDirectory = structure(logical(0), 
            tags = list(type = "string", max = 1024L, pattern = "^$|/.*")), 
            Policy = structure(logical(0), tags = list(type = "string")), 
            Role = structure(logical(0), tags = list(type = "string", 
                pattern = "arn:.*role/.*")), SshPublicKeys = structure(list(structure(list(DateImported = structure(logical(0), 
                tags = list(type = "timestamp")), SshPublicKeyBody = structure(logical(0), 
                tags = list(type = "string", max = 2048L, pattern = "^ssh-rsa\\s+[A-Za-z0-9+/]+[=]{0,3}(\\s+.+)?\\s*$")), 
                SshPublicKeyId = structure(logical(0), tags = list(type = "string", 
                  pattern = "^key-[0-9a-f]{17}$"))), tags = list(type = "structure"))), 
                tags = list(type = "list", max = 5L)), Tags = structure(list(structure(list(Key = structure(logical(0), 
                tags = list(type = "string")), Value = structure(logical(0), 
                tags = list(type = "string"))), tags = list(type = "structure"))), 
                tags = list(type = "list", max = 50L, min = 1L)), 
            UserName = structure(logical(0), tags = list(type = "string", 
                pattern = "^[a-z0-9]{3,32}$"))), tags = list(type = "structure"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

import_ssh_public_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$")), 
        SshPublicKeyBody = structure(logical(0), tags = list(type = "string", 
            max = 2048L, pattern = "^ssh-rsa\\s+[A-Za-z0-9+/]+[=]{0,3}(\\s+.+)?\\s*$")), 
        UserName = structure(logical(0), tags = list(type = "string", 
            pattern = "^[a-z0-9]{3,32}$"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

import_ssh_public_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$")), 
        SshPublicKeyId = structure(logical(0), tags = list(type = "string", 
            pattern = "^key-[0-9a-f]{17}$")), UserName = structure(logical(0), 
            tags = list(type = "string", pattern = "^[a-z0-9]{3,32}$"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

list_servers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        tags = list(type = "integer", max = 1000L, min = 1L)), 
        NextToken = structure(logical(0), tags = list(type = "string", 
            max = 256L, min = 1L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

list_servers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        tags = list(type = "string", max = 256L, min = 1L)), 
        Servers = structure(list(structure(list(Arn = structure(logical(0), 
            tags = list(type = "string", max = 1600L, min = 20L)), 
            IdentityProviderType = structure(logical(0), tags = list(type = "string", 
                enum = c("SERVICE_MANAGED", "API_GATEWAY"))), 
            LoggingRole = structure(logical(0), tags = list(type = "string", 
                pattern = "arn:.*role/.*")), ServerId = structure(logical(0), 
                tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$")), 
            State = structure(logical(0), tags = list(type = "string", 
                enum = c("OFFLINE", "ONLINE", "STARTING", "STOPPING", 
                  "START_FAILED", "STOP_FAILED"))), UserCount = structure(logical(0), 
                tags = list(type = "integer"))), tags = list(type = "structure"))), 
            tags = list(type = "list"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

list_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string", 
        max = 1600L, min = 20L)), MaxResults = structure(logical(0), 
        tags = list(type = "integer", max = 1000L, min = 1L)), 
        NextToken = structure(logical(0), tags = list(type = "string", 
            max = 256L, min = 1L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

list_tags_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string", 
        max = 1600L, min = 20L)), NextToken = structure(logical(0), 
        tags = list(type = "string", max = 256L, min = 1L)), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            tags = list(type = "string")), Value = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure"))), 
            tags = list(type = "list", max = 50L, min = 1L))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

list_users_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        tags = list(type = "integer", max = 1000L, min = 1L)), 
        NextToken = structure(logical(0), tags = list(type = "string", 
            max = 256L, min = 1L)), ServerId = structure(logical(0), 
            tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

list_users_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        tags = list(type = "string", max = 256L, min = 1L)), 
        ServerId = structure(logical(0), tags = list(type = "string", 
            pattern = "^s-([0-9a-f]{17})$")), Users = structure(list(structure(list(Arn = structure(logical(0), 
            tags = list(type = "string", max = 1600L, min = 20L)), 
            HomeDirectory = structure(logical(0), tags = list(type = "string", 
                max = 1024L, pattern = "^$|/.*")), Role = structure(logical(0), 
                tags = list(type = "string", pattern = "arn:.*role/.*")), 
            SshPublicKeyCount = structure(logical(0), tags = list(type = "integer")), 
            UserName = structure(logical(0), tags = list(type = "string", 
                pattern = "^[a-z0-9]{3,32}$"))), tags = list(type = "structure"))), 
            tags = list(type = "list"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

start_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

start_server_output <- function () 
{
    return(list())
}

stop_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

stop_server_output <- function () 
{
    return(list())
}

tag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string", 
        max = 1600L, min = 20L)), Tags = structure(list(structure(list(Key = structure(logical(0), 
        tags = list(type = "string")), Value = structure(logical(0), 
        tags = list(type = "string"))), tags = list(type = "structure"))), 
        tags = list(type = "list", max = 50L, min = 1L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

tag_resource_output <- function () 
{
    return(list())
}

test_identity_provider_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$")), 
        UserName = structure(logical(0), tags = list(type = "string", 
            pattern = "^[a-z0-9]{3,32}$")), UserPassword = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

test_identity_provider_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Message = structure(logical(0), tags = list(type = "string")), 
        StatusCode = structure(logical(0), tags = list(type = "integer")), 
        Url = structure(logical(0), tags = list(type = "string"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

untag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), tags = list(type = "string", 
        max = 1600L, min = 20L)), TagKeys = structure(list(structure(logical(0), 
        tags = list(type = "string"))), tags = list(type = "list", 
        max = 50L, min = 1L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

untag_resource_output <- function () 
{
    return(list())
}

update_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityProviderDetails = structure(list(Url = structure(logical(0), 
        tags = list(type = "string")), InvocationRole = structure(logical(0), 
        tags = list(type = "string", pattern = "arn:.*role/.*"))), 
        tags = list(type = "structure")), LoggingRole = structure(logical(0), 
        tags = list(type = "string", pattern = "^$|arn:.*role/.*")), 
        ServerId = structure(logical(0), tags = list(type = "string", 
            pattern = "^s-([0-9a-f]{17})$"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

update_server_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

update_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HomeDirectory = structure(logical(0), 
        tags = list(type = "string", max = 1024L, pattern = "^$|/.*")), 
        Policy = structure(logical(0), tags = list(type = "string")), 
        Role = structure(logical(0), tags = list(type = "string", 
            pattern = "arn:.*role/.*")), ServerId = structure(logical(0), 
            tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$")), 
        UserName = structure(logical(0), tags = list(type = "string", 
            pattern = "^[a-z0-9]{3,32}$"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

update_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        tags = list(type = "string", pattern = "^s-([0-9a-f]{17})$")), 
        UserName = structure(logical(0), tags = list(type = "string", 
            pattern = "^[a-z0-9]{3,32}$"))), tags = list(type = "structure"))
    return(populate(args, shape))
}
