# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common populate
NULL

detect_entities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Text = structure(logical(0), tags = list(type = "string", 
        max = 20000L, min = 1L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

detect_entities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Entities = structure(list(structure(list(Id = structure(logical(0), 
        tags = list(type = "integer")), BeginOffset = structure(logical(0), 
        tags = list(type = "integer")), EndOffset = structure(logical(0), 
        tags = list(type = "integer")), Score = structure(logical(0), 
        tags = list(type = "float")), Text = structure(logical(0), 
        tags = list(type = "string", min = 1L)), Category = structure(logical(0), 
        tags = list(type = "string", enum = c("MEDICATION", "MEDICAL_CONDITION", 
            "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", 
            "ANATOMY"))), Type = structure(logical(0), tags = list(type = "string", 
        enum = c("NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", 
            "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", 
            "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", 
            "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", 
            "CONTACT_POINT", "EMAIL", "IDENTIFIER", "URL", "ADDRESS", 
            "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", 
            "QUANTITY"))), Traits = structure(list(structure(list(Name = structure(logical(0), 
        tags = list(type = "string", enum = c("SIGN", "SYMPTOM", 
            "DIAGNOSIS", "NEGATION"))), Score = structure(logical(0), 
        tags = list(type = "float"))), tags = list(type = "structure"))), 
        tags = list(type = "list")), Attributes = structure(list(structure(list(Type = structure(logical(0), 
        tags = list(type = "string", enum = c("NAME", "DOSAGE", 
            "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", 
            "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", 
            "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", 
            "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", 
            "CONTACT_POINT", "EMAIL", "IDENTIFIER", "URL", "ADDRESS", 
            "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", 
            "QUANTITY"))), Score = structure(logical(0), tags = list(type = "float")), 
        RelationshipScore = structure(logical(0), tags = list(type = "float")), 
        Id = structure(logical(0), tags = list(type = "integer")), 
        BeginOffset = structure(logical(0), tags = list(type = "integer")), 
        EndOffset = structure(logical(0), tags = list(type = "integer")), 
        Text = structure(logical(0), tags = list(type = "string", 
            min = 1L)), Traits = structure(list(structure(list(Name = structure(logical(0), 
            tags = list(type = "string", enum = c("SIGN", "SYMPTOM", 
                "DIAGNOSIS", "NEGATION"))), Score = structure(logical(0), 
            tags = list(type = "float"))), tags = list(type = "structure"))), 
            tags = list(type = "list"))), tags = list(type = "structure"))), 
        tags = list(type = "list"))), tags = list(type = "structure"))), 
        tags = list(type = "list")), UnmappedAttributes = structure(list(structure(list(Type = structure(logical(0), 
        tags = list(type = "string", enum = c("MEDICATION", "MEDICAL_CONDITION", 
            "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", 
            "ANATOMY"))), Attribute = structure(list(Type = structure(logical(0), 
        tags = list(type = "string", enum = c("NAME", "DOSAGE", 
            "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", 
            "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", 
            "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", 
            "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", 
            "CONTACT_POINT", "EMAIL", "IDENTIFIER", "URL", "ADDRESS", 
            "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", 
            "QUANTITY"))), Score = structure(logical(0), tags = list(type = "float")), 
        RelationshipScore = structure(logical(0), tags = list(type = "float")), 
        Id = structure(logical(0), tags = list(type = "integer")), 
        BeginOffset = structure(logical(0), tags = list(type = "integer")), 
        EndOffset = structure(logical(0), tags = list(type = "integer")), 
        Text = structure(logical(0), tags = list(type = "string", 
            min = 1L)), Traits = structure(list(structure(list(Name = structure(logical(0), 
            tags = list(type = "string", enum = c("SIGN", "SYMPTOM", 
                "DIAGNOSIS", "NEGATION"))), Score = structure(logical(0), 
            tags = list(type = "float"))), tags = list(type = "structure"))), 
            tags = list(type = "list"))), tags = list(type = "structure"))), 
        tags = list(type = "structure"))), tags = list(type = "list")), 
        PaginationToken = structure(logical(0), tags = list(type = "string", 
            min = 1L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

detect_phi_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Text = structure(logical(0), tags = list(type = "string", 
        max = 20000L, min = 1L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

detect_phi_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Entities = structure(list(structure(list(Id = structure(logical(0), 
        tags = list(type = "integer")), BeginOffset = structure(logical(0), 
        tags = list(type = "integer")), EndOffset = structure(logical(0), 
        tags = list(type = "integer")), Score = structure(logical(0), 
        tags = list(type = "float")), Text = structure(logical(0), 
        tags = list(type = "string", min = 1L)), Category = structure(logical(0), 
        tags = list(type = "string", enum = c("MEDICATION", "MEDICAL_CONDITION", 
            "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", 
            "ANATOMY"))), Type = structure(logical(0), tags = list(type = "string", 
        enum = c("NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", 
            "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", 
            "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", 
            "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", 
            "CONTACT_POINT", "EMAIL", "IDENTIFIER", "URL", "ADDRESS", 
            "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", 
            "QUANTITY"))), Traits = structure(list(structure(list(Name = structure(logical(0), 
        tags = list(type = "string", enum = c("SIGN", "SYMPTOM", 
            "DIAGNOSIS", "NEGATION"))), Score = structure(logical(0), 
        tags = list(type = "float"))), tags = list(type = "structure"))), 
        tags = list(type = "list")), Attributes = structure(list(structure(list(Type = structure(logical(0), 
        tags = list(type = "string", enum = c("NAME", "DOSAGE", 
            "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", 
            "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", 
            "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", 
            "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", 
            "CONTACT_POINT", "EMAIL", "IDENTIFIER", "URL", "ADDRESS", 
            "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", 
            "QUANTITY"))), Score = structure(logical(0), tags = list(type = "float")), 
        RelationshipScore = structure(logical(0), tags = list(type = "float")), 
        Id = structure(logical(0), tags = list(type = "integer")), 
        BeginOffset = structure(logical(0), tags = list(type = "integer")), 
        EndOffset = structure(logical(0), tags = list(type = "integer")), 
        Text = structure(logical(0), tags = list(type = "string", 
            min = 1L)), Traits = structure(list(structure(list(Name = structure(logical(0), 
            tags = list(type = "string", enum = c("SIGN", "SYMPTOM", 
                "DIAGNOSIS", "NEGATION"))), Score = structure(logical(0), 
            tags = list(type = "float"))), tags = list(type = "structure"))), 
            tags = list(type = "list"))), tags = list(type = "structure"))), 
        tags = list(type = "list"))), tags = list(type = "structure"))), 
        tags = list(type = "list")), PaginationToken = structure(logical(0), 
        tags = list(type = "string", min = 1L))), tags = list(type = "structure"))
    return(populate(args, shape))
}
