% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.alexaforbusiness_operations.R
\name{search_contacts}
\alias{search_contacts}
\title{Searches contacts and lists the ones that meet a set of filter and sort criteria}
\usage{
search_contacts(Filters = NULL, SortCriteria = NULL,
  NextToken = NULL, MaxResults = NULL)
}
\arguments{
\item{Filters}{The filters to use to list a specified set of address books. The supported filter keys are DisplayName, FirstName, LastName, and AddressBookArns.}

\item{SortCriteria}{The sort order to use in listing the specified set of contacts. The supported sort keys are DisplayName, FirstName, and LastName.}

\item{NextToken}{An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.}

\item{MaxResults}{The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.}
}
\description{
Searches contacts and lists the ones that meet a set of filter and sort criteria.
}
\section{Accepted Parameters}{
\preformatted{search_contacts(
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
  ),
  NextToken = "string",
  MaxResults = 123
)
}
}

