% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.applicationdiscoveryservice_operations.R
\name{describe_agents}
\alias{describe_agents}
\title{Lists agents or connectors as specified by ID or other filters}
\usage{
describe_agents(agentIds = NULL, filters = NULL, maxResults = NULL,
  nextToken = NULL)
}
\arguments{
\item{agentIds}{The agent or the Connector IDs for which you want information. If you specify no IDs, the system returns information about all agents/Connectors associated with your AWS user account.}

\item{filters}{You can filter the request using various logical operators and a \emph{key}-\emph{value} format. For example:

\code{{"key": "collectionStatus", "value": "STARTED"}}}

\item{maxResults}{The total number of agents/Connectors to return in a single page of output. The maximum value is 100.}

\item{nextToken}{Token to retrieve the next set of results. For example, if you previously specified 100 IDs for \code{DescribeAgentsRequest$agentIds} but set \code{DescribeAgentsRequest$maxResults} to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.}
}
\description{
Lists agents or connectors as specified by ID or other filters. All agents/connectors associated with your user account can be listed if you call \code{DescribeAgents} as is without passing any parameters.
}
\section{Accepted Parameters}{
\preformatted{describe_agents(
  agentIds = list(
    "string"
  ),
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
  nextToken = "string"
)
}
}

