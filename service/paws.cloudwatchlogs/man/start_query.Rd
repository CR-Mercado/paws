% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudwatchlogs_operations.R
\name{start_query}
\alias{start_query}
\title{Schedules a query of a log group using CloudWatch Logs Insights}
\usage{
start_query(logGroupName, startTime, endTime, queryString, limit = NULL)
}
\arguments{
\item{logGroupName}{[required] The log group on which to perform the query.}

\item{startTime}{[required] The beginning of the time range to query. Specified as epoch time, the number of seconds since January 1, 1970, 00:00:00 UTC.}

\item{endTime}{[required] The end of the time range to query. Specified as epoch time, the number of seconds since January 1, 1970, 00:00:00 UTC.}

\item{queryString}{[required] The query string to use. For more information, see \href{http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html}{CloudWatch Logs Insights Query Syntax}.}

\item{limit}{The maximum number of log events to return in the query. If the query string uses the \code{fields} command, only the specified fields and their values are returned.}
}
\description{
Schedules a query of a log group using CloudWatch Logs Insights. You specify the log group and time range to query, and the query string to use.
}
\details{
For more information, see \href{http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html}{CloudWatch Logs Insights Query Syntax}.
}
\section{Accepted Parameters}{
\preformatted{start_query(
  logGroupName = "string",
  startTime = 123,
  endTime = 123,
  queryString = "string",
  limit = 123
)
}
}

