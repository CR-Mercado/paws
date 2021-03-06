% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cognitoidentity_operations.R
\name{delete_identity_pool}
\alias{delete_identity_pool}
\title{Deletes a user pool}
\usage{
delete_identity_pool(IdentityPoolId)
}
\arguments{
\item{IdentityPoolId}{[required] An identity pool ID in the format REGION:GUID.}
}
\description{
Deletes a user pool. Once a pool is deleted, users will not be able to authenticate with the pool.
}
\details{
You must use AWS Developer credentials to call this API.
}
\section{Accepted Parameters}{
\preformatted{delete_identity_pool(
  IdentityPoolId = "string"
)
}
}

