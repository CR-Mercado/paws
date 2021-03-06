% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.signer_operations.R
\name{list_signing_platforms}
\alias{list_signing_platforms}
\title{Lists all signing platforms available in AWS Signer that match the request parameters}
\usage{
list_signing_platforms(category = NULL, partner = NULL,
  target = NULL, maxResults = NULL, nextToken = NULL)
}
\arguments{
\item{category}{The category type of a signing platform.}

\item{partner}{Any partner entities connected to a signing platform.}

\item{target}{The validation template that is used by the target signing platform.}

\item{maxResults}{The maximum number of results to be returned by this operation.}

\item{nextToken}{Value for specifying the next set of paginated results to return. After you receive a response with truncated results, use this parameter in a subsequent request. Set it to the value of \code{nextToken} from the response that you just received.}
}
\description{
Lists all signing platforms available in AWS Signer that match the request parameters. If additional jobs remain to be listed, AWS Signer returns a \code{nextToken} value. Use this value in subsequent calls to \code{ListSigningJobs} to fetch the remaining values. You can continue calling \code{ListSigningJobs} with your \code{maxResults} parameter and with new values that AWS Signer returns in the \code{nextToken} parameter until all of your signing jobs have been returned.
}
\section{Accepted Parameters}{
\preformatted{list_signing_platforms(
  category = "string",
  partner = "string",
  target = "string",
  maxResults = 123,
  nextToken = "string"
)
}
}

