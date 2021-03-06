% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.mediatailor_operations.R
\name{list_playback_configurations}
\alias{list_playback_configurations}
\title{Returns a list of the configurations defined in AWS Elemental MediaTailor}
\usage{
list_playback_configurations(MaxResults = NULL, NextToken = NULL)
}
\arguments{
\item{MaxResults}{Maximum number of records to return.}

\item{NextToken}{Pagination token returned by the GET list request when results overrun the meximum allowed. Use the token to fetch the next page of results.}
}
\description{
Returns a list of the configurations defined in AWS Elemental MediaTailor. You can specify a max number of configurations to return at a time. The default max is 50. Results are returned in pagefuls. If AWS Elemental MediaTailor has more configurations than the specified max, it provides parameters in the response that you can use to retrieve the next pageful.
}
\section{Accepted Parameters}{
\preformatted{list_playback_configurations(
  MaxResults = 123,
  NextToken = "string"
)
}
}

