% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cognitoidentityprovider_operations.R
\name{add_custom_attributes}
\alias{add_custom_attributes}
\title{Adds additional user attributes to the user pool schema}
\usage{
add_custom_attributes(UserPoolId, CustomAttributes)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID for the user pool where you want to add custom attributes.}

\item{CustomAttributes}{[required] An array of custom attributes, such as Mutable and Name.}
}
\description{
Adds additional user attributes to the user pool schema.
}
\section{Accepted Parameters}{
\preformatted{add_custom_attributes(
  UserPoolId = "string",
  CustomAttributes = list(
    list(
      Name = "string",
      AttributeDataType = "String"|"Number"|"DateTime"|"Boolean",
      DeveloperOnlyAttribute = TRUE|FALSE,
      Mutable = TRUE|FALSE,
      Required = TRUE|FALSE,
      NumberAttributeConstraints = list(
        MinValue = "string",
        MaxValue = "string"
      ),
      StringAttributeConstraints = list(
        MinLength = "string",
        MaxLength = "string"
      )
    )
  )
)
}
}

