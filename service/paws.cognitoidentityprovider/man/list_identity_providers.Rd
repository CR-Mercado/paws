% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cognitoidentityprovider_operations.R
\name{list_identity_providers}
\alias{list_identity_providers}
\title{Lists information about all identity providers for a user pool}
\usage{
list_identity_providers(UserPoolId, MaxResults = NULL,
  NextToken = NULL)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID.}

\item{MaxResults}{The maximum number of identity providers to return.}

\item{NextToken}{A pagination token.}
}
\description{
Lists information about all identity providers for a user pool.
}
\section{Accepted Parameters}{
\preformatted{list_identity_providers(
  UserPoolId = "string",
  MaxResults = 123,
  NextToken = "string"
)
}
}

