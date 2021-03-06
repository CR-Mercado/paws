% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.applicationdiscoveryservice_operations.R
\name{list_server_neighbors}
\alias{list_server_neighbors}
\title{Retrieves a list of servers that are one network hop away from a specified server}
\usage{
list_server_neighbors(configurationId, portInformationNeeded = NULL,
  neighborConfigurationIds = NULL, maxResults = NULL,
  nextToken = NULL)
}
\arguments{
\item{configurationId}{[required] Configuration ID of the server for which neighbors are being listed.}

\item{portInformationNeeded}{Flag to indicate if port and protocol information is needed as part of the response.}

\item{neighborConfigurationIds}{List of configuration IDs to test for one-hop-away.}

\item{maxResults}{Maximum number of results to return in a single page of output.}

\item{nextToken}{Token to retrieve the next set of results. For example, if you previously specified 100 IDs for \code{ListServerNeighborsRequest$neighborConfigurationIds} but set \code{ListServerNeighborsRequest$maxResults} to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.}
}
\description{
Retrieves a list of servers that are one network hop away from a specified server.
}
\section{Accepted Parameters}{
\preformatted{list_server_neighbors(
  configurationId = "string",
  portInformationNeeded = TRUE|FALSE,
  neighborConfigurationIds = list(
    "string"
  ),
  maxResults = 123,
  nextToken = "string"
)
}
}

