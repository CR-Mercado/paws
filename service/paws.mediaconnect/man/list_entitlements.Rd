% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.mediaconnect_operations.R
\name{list_entitlements}
\alias{list_entitlements}
\title{Displays a list of all entitlements that have been granted to this account}
\usage{
list_entitlements(MaxResults = NULL, NextToken = NULL)
}
\arguments{
\item{MaxResults}{The maximum number of results to return per API request. For example, you submit a ListEntitlements request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 20 results per page.}

\item{NextToken}{The token that identifies which batch of results that you want to see. For example, you submit a ListEntitlements request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListEntitlements request a second time and specify the NextToken value.}
}
\description{
Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page.
}
\section{Accepted Parameters}{
\preformatted{list_entitlements(
  MaxResults = 123,
  NextToken = "string"
)
}
}

