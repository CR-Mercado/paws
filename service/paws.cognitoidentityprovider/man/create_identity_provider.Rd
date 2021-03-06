% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cognitoidentityprovider_operations.R
\name{create_identity_provider}
\alias{create_identity_provider}
\title{Creates an identity provider for a user pool}
\usage{
create_identity_provider(UserPoolId, ProviderName, ProviderType,
  ProviderDetails, AttributeMapping = NULL, IdpIdentifiers = NULL)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID.}

\item{ProviderName}{[required] The identity provider name.}

\item{ProviderType}{[required] The identity provider type.}

\item{ProviderDetails}{[required] The identity provider details, such as \code{MetadataURL} and \code{MetadataFile}.}

\item{AttributeMapping}{A mapping of identity provider attributes to standard and custom user pool attributes.}

\item{IdpIdentifiers}{A list of identity provider identifiers.}
}
\description{
Creates an identity provider for a user pool.
}
\section{Accepted Parameters}{
\preformatted{create_identity_provider(
  UserPoolId = "string",
  ProviderName = "string",
  ProviderType = "SAML"|"Facebook"|"Google"|"LoginWithAmazon"|"OIDC",
  ProviderDetails = list(
    "string"
  ),
  AttributeMapping = list(
    "string"
  ),
  IdpIdentifiers = list(
    "string"
  )
)
}
}

