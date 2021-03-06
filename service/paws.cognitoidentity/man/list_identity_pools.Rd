% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cognitoidentity_operations.R
\name{list_identity_pools}
\alias{list_identity_pools}
\title{Lists all of the Cognito identity pools registered for your account}
\usage{
list_identity_pools(MaxResults, NextToken = NULL)
}
\arguments{
\item{MaxResults}{[required] The maximum number of identities to return.}

\item{NextToken}{A pagination token.}
}
\description{
Lists all of the Cognito identity pools registered for your account.
}
\details{
You must use AWS Developer credentials to call this API.
}
\section{Accepted Parameters}{
\preformatted{list_identity_pools(
  MaxResults = 123,
  NextToken = "string"
)
}
}

