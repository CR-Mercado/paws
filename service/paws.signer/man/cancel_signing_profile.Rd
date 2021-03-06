% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.signer_operations.R
\name{cancel_signing_profile}
\alias{cancel_signing_profile}
\title{Changes the state of an ACTIVE signing profile to CANCELED}
\usage{
cancel_signing_profile(profileName)
}
\arguments{
\item{profileName}{[required] The name of the signing profile to be canceled.}
}
\description{
Changes the state of an \code{ACTIVE} signing profile to \code{CANCELED}. A canceled profile is still viewable with the \code{ListSigningProfiles} operation, but it cannot perform new signing jobs, and is deleted two years after cancelation.
}
\section{Accepted Parameters}{
\preformatted{cancel_signing_profile(
  profileName = "string"
)
}
}

