% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudwatchlogs_operations.R
\name{get_log_record}
\alias{get_log_record}
\title{Retrieves all the fields and values of a single log event}
\usage{
get_log_record(logRecordPointer)
}
\arguments{
\item{logRecordPointer}{[required] The pointer corresponding to the log event record you want to retrieve. You get this from the response of a \code{GetQueryResults} operation. In that response, the value of the \code{@ptr} field for a log event is the value to use as \code{logRecordPointer} to retrieve that complete log event record.}
}
\description{
Retrieves all the fields and values of a single log event. All fields are retrieved, even if the original query that produced the \code{logRecordPointer} retrieved only a subset of fields. Fields are returned as field name/field value pairs.
}
\details{
Additionally, the entire unparsed log event is returned within \code{@message}.
}
\section{Accepted Parameters}{
\preformatted{get_log_record(
  logRecordPointer = "string"
)
}
}

