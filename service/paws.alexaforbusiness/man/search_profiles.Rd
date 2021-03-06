% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.alexaforbusiness_operations.R
\name{search_profiles}
\alias{search_profiles}
\title{Searches room profiles and lists the ones that meet a set of filter criteria}
\usage{
search_profiles(NextToken = NULL, MaxResults = NULL, Filters = NULL,
  SortCriteria = NULL)
}
\arguments{
\item{NextToken}{An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by \code{MaxResults}.}

\item{MaxResults}{The maximum number of results to include in the response. If more results exist than the specified \code{MaxResults} value, a token is included in the response so that the remaining results can be retrieved.}

\item{Filters}{The filters to use to list a specified set of room profiles. Supported filter keys are ProfileName and Address. Required.}

\item{SortCriteria}{The sort order to use in listing the specified set of room profiles. Supported sort keys are ProfileName and Address.}
}
\description{
Searches room profiles and lists the ones that meet a set of filter criteria.
}
\section{Accepted Parameters}{
\preformatted{search_profiles(
  NextToken = "string",
  MaxResults = 123,
  Filters = list(
    list(
      Key = "string",
      Values = list(
        "string"
      )
    )
  ),
  SortCriteria = list(
    list(
      Key = "string",
      Value = "ASC"|"DESC"
    )
  )
)
}
}

