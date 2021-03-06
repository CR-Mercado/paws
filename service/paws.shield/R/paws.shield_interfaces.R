# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common populate
NULL

associate_drt_log_bucket_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogBucket = structure(logical(0), 
        tags = list(type = "string", max = 63L, min = 3L, pattern = "^([a-z]|(\\d(?!\\d{0,2}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})))([a-z\\d]|(\\.(?!(\\.|-)))|(-(?!\\.))){1,61}[a-z\\d]$"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

associate_drt_log_bucket_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

associate_drt_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), tags = list(type = "string", 
        max = 2048L, min = 1L, pattern = "^arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

associate_drt_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

create_protection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), tags = list(type = "string", 
        max = 128L, min = 1L, pattern = "[ a-zA-Z0-9_\\\\.\\\\-]*")), 
        ResourceArn = structure(logical(0), tags = list(type = "string", 
            max = 2048L, min = 1L, pattern = "^arn:aws.*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

create_protection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProtectionId = structure(logical(0), 
        tags = list(type = "string", max = 36L, min = 1L, pattern = "[a-zA-Z0-9\\\\-]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

create_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

create_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_protection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProtectionId = structure(logical(0), 
        tags = list(type = "string", max = 36L, min = 1L, pattern = "[a-zA-Z0-9\\\\-]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_protection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure", 
        deprecated = TRUE))
    return(populate(args, shape))
}

delete_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure", 
        deprecated = TRUE))
    return(populate(args, shape))
}

describe_attack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttackId = structure(logical(0), 
        tags = list(type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9\\\\-]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_attack_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attack = structure(list(AttackId = structure(logical(0), 
        tags = list(type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9\\\\-]*")), 
        ResourceArn = structure(logical(0), tags = list(type = "string", 
            max = 2048L, min = 1L, pattern = "^arn:aws.*")), 
        SubResources = structure(list(structure(list(Type = structure(logical(0), 
            tags = list(type = "string", enum = c("IP", "URL"))), 
            Id = structure(logical(0), tags = list(type = "string")), 
            AttackVectors = structure(list(structure(list(VectorType = structure(logical(0), 
                tags = list(type = "string")), VectorCounters = structure(list(structure(list(Name = structure(logical(0), 
                tags = list(type = "string")), Max = structure(logical(0), 
                tags = list(type = "double")), Average = structure(logical(0), 
                tags = list(type = "double")), Sum = structure(logical(0), 
                tags = list(type = "double")), N = structure(logical(0), 
                tags = list(type = "integer")), Unit = structure(logical(0), 
                tags = list(type = "string"))), tags = list(type = "structure"))), 
                tags = list(type = "list"))), tags = list(type = "structure"))), 
                tags = list(type = "list")), Counters = structure(list(structure(list(Name = structure(logical(0), 
                tags = list(type = "string")), Max = structure(logical(0), 
                tags = list(type = "double")), Average = structure(logical(0), 
                tags = list(type = "double")), Sum = structure(logical(0), 
                tags = list(type = "double")), N = structure(logical(0), 
                tags = list(type = "integer")), Unit = structure(logical(0), 
                tags = list(type = "string"))), tags = list(type = "structure"))), 
                tags = list(type = "list"))), tags = list(type = "structure"))), 
            tags = list(type = "list")), StartTime = structure(logical(0), 
            tags = list(type = "timestamp")), EndTime = structure(logical(0), 
            tags = list(type = "timestamp")), AttackCounters = structure(list(structure(list(Name = structure(logical(0), 
            tags = list(type = "string")), Max = structure(logical(0), 
            tags = list(type = "double")), Average = structure(logical(0), 
            tags = list(type = "double")), Sum = structure(logical(0), 
            tags = list(type = "double")), N = structure(logical(0), 
            tags = list(type = "integer")), Unit = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure"))), 
            tags = list(type = "list")), AttackProperties = structure(list(structure(list(AttackLayer = structure(logical(0), 
            tags = list(type = "string", enum = c("NETWORK", 
                "APPLICATION"))), AttackPropertyIdentifier = structure(logical(0), 
            tags = list(type = "string", enum = c("DESTINATION_URL", 
                "REFERRER", "SOURCE_ASN", "SOURCE_COUNTRY", "SOURCE_IP_ADDRESS", 
                "SOURCE_USER_AGENT"))), TopContributors = structure(list(structure(list(Name = structure(logical(0), 
            tags = list(type = "string")), Value = structure(logical(0), 
            tags = list(type = "long"))), tags = list(type = "structure"))), 
            tags = list(type = "list")), Unit = structure(logical(0), 
            tags = list(type = "string", enum = c("BITS", "BYTES", 
                "PACKETS", "REQUESTS"))), Total = structure(logical(0), 
            tags = list(type = "long"))), tags = list(type = "structure"))), 
            tags = list(type = "list")), Mitigations = structure(list(structure(list(MitigationName = structure(logical(0), 
            tags = list(type = "string"))), tags = list(type = "structure"))), 
            tags = list(type = "list"))), tags = list(type = "structure"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_drt_access_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_drt_access_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), tags = list(type = "string", 
        max = 2048L, min = 1L, pattern = "^arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
        LogBucketList = structure(list(structure(logical(0), 
            tags = list(type = "string", max = 63L, min = 3L, 
                pattern = "^([a-z]|(\\d(?!\\d{0,2}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})))([a-z\\d]|(\\.(?!(\\.|-)))|(-(?!\\.))){1,61}[a-z\\d]$"))), 
            tags = list(type = "list", max = 10L, min = 0L))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_emergency_contact_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_emergency_contact_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EmergencyContactList = structure(list(structure(list(EmailAddress = structure(logical(0), 
        tags = list(type = "string", max = 150L, min = 1L, pattern = "^\\S+@\\S+\\.\\S+$"))), 
        tags = list(type = "structure"))), tags = list(type = "list", 
        max = 10L, min = 0L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_protection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProtectionId = structure(logical(0), 
        tags = list(type = "string", max = 36L, min = 1L, pattern = "[a-zA-Z0-9\\\\-]*")), 
        ResourceArn = structure(logical(0), tags = list(type = "string", 
            max = 2048L, min = 1L, pattern = "^arn:aws.*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_protection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Protection = structure(list(Id = structure(logical(0), 
        tags = list(type = "string", max = 36L, min = 1L, pattern = "[a-zA-Z0-9\\\\-]*")), 
        Name = structure(logical(0), tags = list(type = "string", 
            max = 128L, min = 1L, pattern = "[ a-zA-Z0-9_\\\\.\\\\-]*")), 
        ResourceArn = structure(logical(0), tags = list(type = "string", 
            max = 2048L, min = 1L, pattern = "^arn:aws.*"))), 
        tags = list(type = "structure"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subscription = structure(list(StartTime = structure(logical(0), 
        tags = list(type = "timestamp")), EndTime = structure(logical(0), 
        tags = list(type = "timestamp")), TimeCommitmentInSeconds = structure(logical(0), 
        tags = list(type = "long", min = 0L)), AutoRenew = structure(logical(0), 
        tags = list(type = "string", enum = c("ENABLED", "DISABLED"))), 
        Limits = structure(list(structure(list(Type = structure(logical(0), 
            tags = list(type = "string")), Max = structure(logical(0), 
            tags = list(type = "long"))), tags = list(type = "structure"))), 
            tags = list(type = "list"))), tags = list(type = "structure"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

disassociate_drt_log_bucket_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogBucket = structure(logical(0), 
        tags = list(type = "string", max = 63L, min = 3L, pattern = "^([a-z]|(\\d(?!\\d{0,2}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})))([a-z\\d]|(\\.(?!(\\.|-)))|(-(?!\\.))){1,61}[a-z\\d]$"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

disassociate_drt_log_bucket_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

disassociate_drt_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

disassociate_drt_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

get_subscription_state_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

get_subscription_state_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionState = structure(logical(0), 
        tags = list(type = "string", enum = c("ACTIVE", "INACTIVE")))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

list_attacks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArns = structure(list(structure(logical(0), 
        tags = list(type = "string", max = 2048L, min = 1L, pattern = "^arn:aws.*"))), 
        tags = list(type = "list")), StartTime = structure(list(FromInclusive = structure(logical(0), 
        tags = list(type = "timestamp")), ToExclusive = structure(logical(0), 
        tags = list(type = "timestamp"))), tags = list(type = "structure")), 
        EndTime = structure(list(FromInclusive = structure(logical(0), 
            tags = list(type = "timestamp")), ToExclusive = structure(logical(0), 
            tags = list(type = "timestamp"))), tags = list(type = "structure")), 
        NextToken = structure(logical(0), tags = list(type = "string", 
            max = 4096L, min = 1L, pattern = "^.*$")), MaxResults = structure(logical(0), 
            tags = list(type = "integer", box = TRUE, max = 10000L, 
                min = 0L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

list_attacks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttackSummaries = structure(list(structure(list(AttackId = structure(logical(0), 
        tags = list(type = "string")), ResourceArn = structure(logical(0), 
        tags = list(type = "string")), StartTime = structure(logical(0), 
        tags = list(type = "timestamp")), EndTime = structure(logical(0), 
        tags = list(type = "timestamp")), AttackVectors = structure(list(structure(list(VectorType = structure(logical(0), 
        tags = list(type = "string"))), tags = list(type = "structure"))), 
        tags = list(type = "list"))), tags = list(type = "structure"))), 
        tags = list(type = "list")), NextToken = structure(logical(0), 
        tags = list(type = "string", max = 4096L, min = 1L, pattern = "^.*$"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

list_protections_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        tags = list(type = "string", max = 4096L, min = 1L, pattern = "^.*$")), 
        MaxResults = structure(logical(0), tags = list(type = "integer", 
            box = TRUE, max = 10000L, min = 0L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

list_protections_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Protections = structure(list(structure(list(Id = structure(logical(0), 
        tags = list(type = "string", max = 36L, min = 1L, pattern = "[a-zA-Z0-9\\\\-]*")), 
        Name = structure(logical(0), tags = list(type = "string", 
            max = 128L, min = 1L, pattern = "[ a-zA-Z0-9_\\\\.\\\\-]*")), 
        ResourceArn = structure(logical(0), tags = list(type = "string", 
            max = 2048L, min = 1L, pattern = "^arn:aws.*"))), 
        tags = list(type = "structure"))), tags = list(type = "list")), 
        NextToken = structure(logical(0), tags = list(type = "string", 
            max = 4096L, min = 1L, pattern = "^.*$"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

update_emergency_contact_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EmergencyContactList = structure(list(structure(list(EmailAddress = structure(logical(0), 
        tags = list(type = "string", max = 150L, min = 1L, pattern = "^\\S+@\\S+\\.\\S+$"))), 
        tags = list(type = "structure"))), tags = list(type = "list", 
        max = 10L, min = 0L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

update_emergency_contact_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

update_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoRenew = structure(logical(0), 
        tags = list(type = "string", enum = c("ENABLED", "DISABLED")))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

update_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}
