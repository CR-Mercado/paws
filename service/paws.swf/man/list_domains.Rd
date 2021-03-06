% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.swf_operations.R
\name{list_domains}
\alias{list_domains}
\title{Returns the list of domains registered in the account}
\usage{
list_domains(nextPageToken = NULL, registrationStatus,
  maximumPageSize = NULL, reverseOrder = NULL)
}
\arguments{
\item{nextPageToken}{If a \code{NextPageToken} was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in \code{nextPageToken}. Keep all other arguments unchanged.

The configured \code{maximumPageSize} determines how many results can be returned in a single call.}

\item{registrationStatus}{[required] Specifies the registration status of the domains to list.}

\item{maximumPageSize}{The maximum number of results that are returned per call. \code{nextPageToken} can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size \emph{smaller} than the maximum.

This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.}

\item{reverseOrder}{When set to \code{true}, returns the results in reverse order. By default, the results are returned in ascending alphabetical order by \code{name} of the domains.}
}
\description{
Returns the list of domains registered in the account. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.
}
\details{
This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.

\strong{Access Control}

You can use IAM policies to control this action's access to Amazon SWF resources as follows:
\itemize{
\item Use a \code{Resource} element with the domain name to limit the action to only specified domains. The element must be set to \code{arn:aws:swf::AccountID:domain/*}, where \emph{AccountID} is the account ID, with no dashes.
\item Use an \code{Action} element to allow or deny permission to call this action.
\item You cannot use an IAM policy to constrain this action's parameters.
}

If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's \code{cause} parameter is set to \code{OPERATION_NOT_PERMITTED}. For details and example IAM policies, see \href{http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html}{Using IAM to Manage Access to Amazon SWF Workflows} in the \emph{Amazon SWF Developer Guide}.
}
\section{Accepted Parameters}{
\preformatted{list_domains(
  nextPageToken = "string",
  registrationStatus = "REGISTERED"|"DEPRECATED",
  maximumPageSize = 123,
  reverseOrder = TRUE|FALSE
)
}
}

