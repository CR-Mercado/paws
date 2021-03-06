% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ssm_operations.R
\name{list_resource_data_sync}
\alias{list_resource_data_sync}
\title{Lists your resource data sync configurations}
\usage{
list_resource_data_sync(NextToken = NULL, MaxResults = NULL)
}
\arguments{
\item{NextToken}{A token to start the list. Use this token to get the next set of results.}

\item{MaxResults}{The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.}
}
\description{
Lists your resource data sync configurations. Includes information about the last time a sync attempted to start, the last sync status, and the last time a sync successfully completed.
}
\details{
The number of sync configurations might be too large to return using a single call to \code{ListResourceDataSync}. You can limit the number of sync configurations returned by using the \code{MaxResults} parameter. To determine whether there are more sync configurations to list, check the value of \code{NextToken} in the output. If there are more sync configurations to list, you can request them by specifying the \code{NextToken} returned in the call to the parameter of a subsequent call.
}
\section{Accepted Parameters}{
\preformatted{list_resource_data_sync(
  NextToken = "string",
  MaxResults = 123
)
}
}

