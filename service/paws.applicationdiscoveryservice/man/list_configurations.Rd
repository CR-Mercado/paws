% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.applicationdiscoveryservice_operations.R
\name{list_configurations}
\alias{list_configurations}
\title{Retrieves a list of configuration items as specified by the value passed to the required paramater configurationType}
\usage{
list_configurations(configurationType, filters = NULL,
  maxResults = NULL, nextToken = NULL, orderBy = NULL)
}
\arguments{
\item{configurationType}{[required] A valid configuration identified by Application Discovery Service.}

\item{filters}{You can filter the request using various logical operators and a \emph{key}-\emph{value} format. For example:

\code{{"key": "serverType", "value": "webServer"}}

For a complete list of filter options and guidance about using them with this action, see \href{http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations}{Querying Discovered Configuration Items}.}

\item{maxResults}{The total number of items to return. The maximum value is 100.}

\item{nextToken}{Token to retrieve the next set of results. For example, if a previous call to ListConfigurations returned 100 items, but you set \code{ListConfigurationsRequest$maxResults} to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.}

\item{orderBy}{Certain filter criteria return output that can be sorted in ascending or descending order. For a list of output characteristics for each filter, see \href{http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations}{Using the ListConfigurations Action}.}
}
\description{
Retrieves a list of configuration items as specified by the value passed to the required paramater \code{configurationType}. Optional filtering may be applied to refine search results.
}
\section{Accepted Parameters}{
\preformatted{list_configurations(
  configurationType = "SERVER"|"PROCESS"|"CONNECTION"|"APPLICATION",
  filters = list(
    list(
      name = "string",
      values = list(
        "string"
      ),
      condition = "string"
    )
  ),
  maxResults = 123,
  nextToken = "string",
  orderBy = list(
    list(
      fieldName = "string",
      sortOrder = "ASC"|"DESC"
    )
  )
)
}
}

