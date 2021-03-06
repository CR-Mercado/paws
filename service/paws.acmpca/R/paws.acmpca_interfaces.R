# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common populate
NULL

create_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityConfiguration = structure(list(KeyAlgorithm = structure(logical(0), 
        tags = list(type = "string", enum = c("RSA_2048", "RSA_4096", 
            "EC_prime256v1", "EC_secp384r1"))), SigningAlgorithm = structure(logical(0), 
        tags = list(type = "string", enum = c("SHA256WITHECDSA", 
            "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", 
            "SHA384WITHRSA", "SHA512WITHRSA"))), Subject = structure(list(Country = structure(logical(0), 
        tags = list(type = "string", pattern = "[A-Za-z]{2}")), 
        Organization = structure(logical(0), tags = list(type = "string", 
            max = 64L, min = 0L)), OrganizationalUnit = structure(logical(0), 
            tags = list(type = "string", max = 64L, min = 0L)), 
        DistinguishedNameQualifier = structure(logical(0), tags = list(type = "string", 
            max = 64L, min = 0L, pattern = "[a-zA-Z0-9'()+-.?:/= ]*")), 
        State = structure(logical(0), tags = list(type = "string", 
            max = 128L, min = 0L)), CommonName = structure(logical(0), 
            tags = list(type = "string", max = 64L, min = 0L)), 
        SerialNumber = structure(logical(0), tags = list(type = "string", 
            max = 64L, min = 0L)), Locality = structure(logical(0), 
            tags = list(type = "string", max = 128L, min = 0L)), 
        Title = structure(logical(0), tags = list(type = "string", 
            max = 64L, min = 0L)), Surname = structure(logical(0), 
            tags = list(type = "string", max = 40L, min = 0L)), 
        GivenName = structure(logical(0), tags = list(type = "string", 
            max = 16L, min = 0L)), Initials = structure(logical(0), 
            tags = list(type = "string", max = 5L, min = 0L)), 
        Pseudonym = structure(logical(0), tags = list(type = "string", 
            max = 128L, min = 0L)), GenerationQualifier = structure(logical(0), 
            tags = list(type = "string", max = 3L, min = 0L))), 
        tags = list(type = "structure"))), tags = list(type = "structure")), 
        RevocationConfiguration = structure(list(CrlConfiguration = structure(list(Enabled = structure(logical(0), 
            tags = list(box = TRUE, type = "boolean")), ExpirationInDays = structure(logical(0), 
            tags = list(box = TRUE, type = "integer", max = 5000L, 
                min = 1L)), CustomCname = structure(logical(0), 
            tags = list(type = "string", max = 253L, min = 0L)), 
            S3BucketName = structure(logical(0), tags = list(type = "string", 
                max = 255L, min = 3L))), tags = list(type = "structure"))), 
            tags = list(type = "structure")), CertificateAuthorityType = structure(logical(0), 
            tags = list(type = "string", enum = "SUBORDINATE")), 
        IdempotencyToken = structure(logical(0), tags = list(type = "string", 
            max = 36L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*")), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            tags = list(type = "string", max = 128L, min = 1L, 
                pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            Value = structure(logical(0), tags = list(type = "string", 
                max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"))), 
            tags = list(type = "structure"))), tags = list(type = "list", 
            max = 50L, min = 1L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

create_certificate_authority_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

create_certificate_authority_audit_report_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        S3BucketName = structure(logical(0), tags = list(type = "string")), 
        AuditReportResponseFormat = structure(logical(0), tags = list(type = "string", 
            enum = c("JSON", "CSV")))), tags = list(type = "structure"))
    return(populate(args, shape))
}

create_certificate_authority_audit_report_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuditReportId = structure(logical(0), 
        tags = list(type = "string", max = 36L, min = 36L, pattern = "[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}")), 
        S3Key = structure(logical(0), tags = list(type = "string"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        PermanentDeletionTimeInDays = structure(logical(0), tags = list(type = "integer", 
            max = 30L, min = 7L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_certificate_authority_output <- function () 
{
    return(list())
}

describe_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_certificate_authority_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthority = structure(list(Arn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        CreatedAt = structure(logical(0), tags = list(type = "timestamp")), 
        LastStateChangeAt = structure(logical(0), tags = list(type = "timestamp")), 
        Type = structure(logical(0), tags = list(type = "string", 
            enum = "SUBORDINATE")), Serial = structure(logical(0), 
            tags = list(type = "string")), Status = structure(logical(0), 
            tags = list(type = "string", enum = c("CREATING", 
                "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", 
                "EXPIRED", "FAILED"))), NotBefore = structure(logical(0), 
            tags = list(type = "timestamp")), NotAfter = structure(logical(0), 
            tags = list(type = "timestamp")), FailureReason = structure(logical(0), 
            tags = list(type = "string", enum = c("REQUEST_TIMED_OUT", 
                "UNSUPPORTED_ALGORITHM", "OTHER"))), CertificateAuthorityConfiguration = structure(list(KeyAlgorithm = structure(logical(0), 
            tags = list(type = "string", enum = c("RSA_2048", 
                "RSA_4096", "EC_prime256v1", "EC_secp384r1"))), 
            SigningAlgorithm = structure(logical(0), tags = list(type = "string", 
                enum = c("SHA256WITHECDSA", "SHA384WITHECDSA", 
                  "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", 
                  "SHA512WITHRSA"))), Subject = structure(list(Country = structure(logical(0), 
                tags = list(type = "string", pattern = "[A-Za-z]{2}")), 
                Organization = structure(logical(0), tags = list(type = "string", 
                  max = 64L, min = 0L)), OrganizationalUnit = structure(logical(0), 
                  tags = list(type = "string", max = 64L, min = 0L)), 
                DistinguishedNameQualifier = structure(logical(0), 
                  tags = list(type = "string", max = 64L, min = 0L, 
                    pattern = "[a-zA-Z0-9'()+-.?:/= ]*")), State = structure(logical(0), 
                  tags = list(type = "string", max = 128L, min = 0L)), 
                CommonName = structure(logical(0), tags = list(type = "string", 
                  max = 64L, min = 0L)), SerialNumber = structure(logical(0), 
                  tags = list(type = "string", max = 64L, min = 0L)), 
                Locality = structure(logical(0), tags = list(type = "string", 
                  max = 128L, min = 0L)), Title = structure(logical(0), 
                  tags = list(type = "string", max = 64L, min = 0L)), 
                Surname = structure(logical(0), tags = list(type = "string", 
                  max = 40L, min = 0L)), GivenName = structure(logical(0), 
                  tags = list(type = "string", max = 16L, min = 0L)), 
                Initials = structure(logical(0), tags = list(type = "string", 
                  max = 5L, min = 0L)), Pseudonym = structure(logical(0), 
                  tags = list(type = "string", max = 128L, min = 0L)), 
                GenerationQualifier = structure(logical(0), tags = list(type = "string", 
                  max = 3L, min = 0L))), tags = list(type = "structure"))), 
            tags = list(type = "structure")), RevocationConfiguration = structure(list(CrlConfiguration = structure(list(Enabled = structure(logical(0), 
            tags = list(box = TRUE, type = "boolean")), ExpirationInDays = structure(logical(0), 
            tags = list(box = TRUE, type = "integer", max = 5000L, 
                min = 1L)), CustomCname = structure(logical(0), 
            tags = list(type = "string", max = 253L, min = 0L)), 
            S3BucketName = structure(logical(0), tags = list(type = "string", 
                max = 255L, min = 3L))), tags = list(type = "structure"))), 
            tags = list(type = "structure")), RestorableUntil = structure(logical(0), 
            tags = list(type = "timestamp"))), tags = list(type = "structure"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_certificate_authority_audit_report_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        AuditReportId = structure(logical(0), tags = list(type = "string", 
            max = 36L, min = 36L, pattern = "[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_certificate_authority_audit_report_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuditReportStatus = structure(logical(0), 
        tags = list(type = "string", enum = c("CREATING", "SUCCESS", 
            "FAILED"))), S3BucketName = structure(logical(0), 
        tags = list(type = "string")), S3Key = structure(logical(0), 
        tags = list(type = "string")), CreatedAt = structure(logical(0), 
        tags = list(type = "timestamp"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

get_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        CertificateArn = structure(logical(0), tags = list(type = "string", 
            max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

get_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificate = structure(logical(0), 
        tags = list(type = "string")), CertificateChain = structure(logical(0), 
        tags = list(type = "string"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

get_certificate_authority_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

get_certificate_authority_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificate = structure(logical(0), 
        tags = list(type = "string")), CertificateChain = structure(logical(0), 
        tags = list(type = "string"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

get_certificate_authority_csr_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

get_certificate_authority_csr_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Csr = structure(logical(0), tags = list(type = "string"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

import_certificate_authority_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        Certificate = structure(logical(0), tags = list(type = "blob", 
            max = 32768L, min = 1L)), CertificateChain = structure(logical(0), 
            tags = list(type = "blob", max = 2097152L, min = 0L))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

import_certificate_authority_certificate_output <- function () 
{
    return(list())
}

issue_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        Csr = structure(logical(0), tags = list(type = "blob", 
            max = 32768L, min = 1L)), SigningAlgorithm = structure(logical(0), 
            tags = list(type = "string", enum = c("SHA256WITHECDSA", 
                "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", 
                "SHA384WITHRSA", "SHA512WITHRSA"))), Validity = structure(list(Value = structure(logical(0), 
            tags = list(box = TRUE, type = "long", min = 1L)), 
            Type = structure(logical(0), tags = list(type = "string", 
                enum = c("END_DATE", "ABSOLUTE", "DAYS", "MONTHS", 
                  "YEARS")))), tags = list(type = "structure")), 
        IdempotencyToken = structure(logical(0), tags = list(type = "string", 
            max = 36L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

issue_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

list_certificate_authorities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        tags = list(type = "string", max = 500L, min = 1L)), 
        MaxResults = structure(logical(0), tags = list(type = "integer", 
            max = 1000L, min = 1L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

list_certificate_authorities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorities = structure(list(structure(list(Arn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        CreatedAt = structure(logical(0), tags = list(type = "timestamp")), 
        LastStateChangeAt = structure(logical(0), tags = list(type = "timestamp")), 
        Type = structure(logical(0), tags = list(type = "string", 
            enum = "SUBORDINATE")), Serial = structure(logical(0), 
            tags = list(type = "string")), Status = structure(logical(0), 
            tags = list(type = "string", enum = c("CREATING", 
                "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", 
                "EXPIRED", "FAILED"))), NotBefore = structure(logical(0), 
            tags = list(type = "timestamp")), NotAfter = structure(logical(0), 
            tags = list(type = "timestamp")), FailureReason = structure(logical(0), 
            tags = list(type = "string", enum = c("REQUEST_TIMED_OUT", 
                "UNSUPPORTED_ALGORITHM", "OTHER"))), CertificateAuthorityConfiguration = structure(list(KeyAlgorithm = structure(logical(0), 
            tags = list(type = "string", enum = c("RSA_2048", 
                "RSA_4096", "EC_prime256v1", "EC_secp384r1"))), 
            SigningAlgorithm = structure(logical(0), tags = list(type = "string", 
                enum = c("SHA256WITHECDSA", "SHA384WITHECDSA", 
                  "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", 
                  "SHA512WITHRSA"))), Subject = structure(list(Country = structure(logical(0), 
                tags = list(type = "string", pattern = "[A-Za-z]{2}")), 
                Organization = structure(logical(0), tags = list(type = "string", 
                  max = 64L, min = 0L)), OrganizationalUnit = structure(logical(0), 
                  tags = list(type = "string", max = 64L, min = 0L)), 
                DistinguishedNameQualifier = structure(logical(0), 
                  tags = list(type = "string", max = 64L, min = 0L, 
                    pattern = "[a-zA-Z0-9'()+-.?:/= ]*")), State = structure(logical(0), 
                  tags = list(type = "string", max = 128L, min = 0L)), 
                CommonName = structure(logical(0), tags = list(type = "string", 
                  max = 64L, min = 0L)), SerialNumber = structure(logical(0), 
                  tags = list(type = "string", max = 64L, min = 0L)), 
                Locality = structure(logical(0), tags = list(type = "string", 
                  max = 128L, min = 0L)), Title = structure(logical(0), 
                  tags = list(type = "string", max = 64L, min = 0L)), 
                Surname = structure(logical(0), tags = list(type = "string", 
                  max = 40L, min = 0L)), GivenName = structure(logical(0), 
                  tags = list(type = "string", max = 16L, min = 0L)), 
                Initials = structure(logical(0), tags = list(type = "string", 
                  max = 5L, min = 0L)), Pseudonym = structure(logical(0), 
                  tags = list(type = "string", max = 128L, min = 0L)), 
                GenerationQualifier = structure(logical(0), tags = list(type = "string", 
                  max = 3L, min = 0L))), tags = list(type = "structure"))), 
            tags = list(type = "structure")), RevocationConfiguration = structure(list(CrlConfiguration = structure(list(Enabled = structure(logical(0), 
            tags = list(box = TRUE, type = "boolean")), ExpirationInDays = structure(logical(0), 
            tags = list(box = TRUE, type = "integer", max = 5000L, 
                min = 1L)), CustomCname = structure(logical(0), 
            tags = list(type = "string", max = 253L, min = 0L)), 
            S3BucketName = structure(logical(0), tags = list(type = "string", 
                max = 255L, min = 3L))), tags = list(type = "structure"))), 
            tags = list(type = "structure")), RestorableUntil = structure(logical(0), 
            tags = list(type = "timestamp"))), tags = list(type = "structure"))), 
        tags = list(type = "list")), NextToken = structure(logical(0), 
        tags = list(type = "string", max = 500L, min = 1L))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

list_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        NextToken = structure(logical(0), tags = list(type = "string", 
            max = 500L, min = 1L)), MaxResults = structure(logical(0), 
            tags = list(type = "integer", max = 1000L, min = 1L))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

list_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        tags = list(type = "string", max = 128L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
        Value = structure(logical(0), tags = list(type = "string", 
            max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"))), 
        tags = list(type = "structure"))), tags = list(type = "list", 
        max = 50L, min = 1L)), NextToken = structure(logical(0), 
        tags = list(type = "string", max = 500L, min = 1L))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

restore_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

restore_certificate_authority_output <- function () 
{
    return(list())
}

revoke_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        CertificateSerial = structure(logical(0), tags = list(type = "string", 
            max = 128L, min = 0L)), RevocationReason = structure(logical(0), 
            tags = list(type = "string", enum = c("UNSPECIFIED", 
                "KEY_COMPROMISE", "CERTIFICATE_AUTHORITY_COMPROMISE", 
                "AFFILIATION_CHANGED", "SUPERSEDED", "CESSATION_OF_OPERATION", 
                "PRIVILEGE_WITHDRAWN", "A_A_COMPROMISE")))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

revoke_certificate_output <- function () 
{
    return(list())
}

tag_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            tags = list(type = "string", max = 128L, min = 1L, 
                pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            Value = structure(logical(0), tags = list(type = "string", 
                max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"))), 
            tags = list(type = "structure"))), tags = list(type = "list", 
            max = 50L, min = 1L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

tag_certificate_authority_output <- function () 
{
    return(list())
}

untag_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            tags = list(type = "string", max = 128L, min = 1L, 
                pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            Value = structure(logical(0), tags = list(type = "string", 
                max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"))), 
            tags = list(type = "structure"))), tags = list(type = "list", 
            max = 50L, min = 1L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

untag_certificate_authority_output <- function () 
{
    return(list())
}

update_certificate_authority_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateAuthorityArn = structure(logical(0), 
        tags = list(type = "string", max = 200L, min = 5L, pattern = "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*")), 
        RevocationConfiguration = structure(list(CrlConfiguration = structure(list(Enabled = structure(logical(0), 
            tags = list(box = TRUE, type = "boolean")), ExpirationInDays = structure(logical(0), 
            tags = list(box = TRUE, type = "integer", max = 5000L, 
                min = 1L)), CustomCname = structure(logical(0), 
            tags = list(type = "string", max = 253L, min = 0L)), 
            S3BucketName = structure(logical(0), tags = list(type = "string", 
                max = 255L, min = 3L))), tags = list(type = "structure"))), 
            tags = list(type = "structure")), Status = structure(logical(0), 
            tags = list(type = "string", enum = c("CREATING", 
                "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", 
                "EXPIRED", "FAILED")))), tags = list(type = "structure"))
    return(populate(args, shape))
}

update_certificate_authority_output <- function () 
{
    return(list())
}
