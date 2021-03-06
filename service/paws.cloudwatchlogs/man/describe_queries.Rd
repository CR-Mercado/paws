% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudwatchlogs_operations.R
\name{describe_queries}
\alias{describe_queries}
\title{Returns a list of CloudWatch Logs Insights queries that are scheduled, executing, or have been executed recently in this account}
\usage{
describe_queries(logGroupName = NULL, status = NULL,
  maxResults = NULL, nextToken = NULL)
}
\arguments{
\item{logGroupName}{Limits the returned queries to only those for the specified log group.}

\item{status}{Limits the returned queries to only those that have the specified status. Valid values are \code{Cancelled}, \code{Complete}, \code{Failed}, \code{Running}, and \code{Scheduled}.}

\item{maxResults}{Limits the number of returned queries to the specified number.}

\item{nextToken}{}
}
\description{
Returns a list of CloudWatch Logs Insights queries that are scheduled, executing, or have been executed recently in this account. You can request all queries, or limit it to queries of a specific log group or queries with a certain status.
}
\section{Accepted Parameters}{
\preformatted{describe_queries(
  logGroupName = "string",
  status = "Scheduled"|"Running"|"Complete"|"Failed"|"Cancelled",
  maxResults = 123,
  nextToken = "string"
)
}
}

