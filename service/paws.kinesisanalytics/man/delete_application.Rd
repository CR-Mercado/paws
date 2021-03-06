% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.kinesisanalytics_operations.R
\name{delete_application}
\alias{delete_application}
\title{Deletes the specified application}
\usage{
delete_application(ApplicationName, CreateTimestamp)
}
\arguments{
\item{ApplicationName}{[required] Name of the Amazon Kinesis Analytics application to delete.}

\item{CreateTimestamp}{[required] You can use the \code{DescribeApplication} operation to get this value.}
}
\description{
Deletes the specified application. Amazon Kinesis Analytics halts application execution and deletes the application, including any application artifacts (such as in-application streams, reference table, and application code).
}
\details{
This operation requires permissions to perform the \code{kinesisanalytics:DeleteApplication} action.
}
\section{Accepted Parameters}{
\preformatted{delete_application(
  ApplicationName = "string",
  CreateTimestamp = as.POSIXct("2015-01-01")
)
}
}

