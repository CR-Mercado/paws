% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.redshift_operations.R
\name{enable_logging}
\alias{enable_logging}
\title{Starts logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster}
\usage{
enable_logging(ClusterIdentifier, BucketName, S3KeyPrefix = NULL)
}
\arguments{
\item{ClusterIdentifier}{[required] The identifier of the cluster on which logging is to be started.

Example: \code{examplecluster}}

\item{BucketName}{[required] The name of an existing S3 bucket where the log files are to be stored.

Constraints:
\itemize{
\item Must be in the same region as the cluster
\item The cluster must have read bucket and put object permissions
}}

\item{S3KeyPrefix}{The prefix applied to the log file names.

Constraints:
\itemize{
\item Cannot exceed 512 characters
\item Cannot contain spaces( ), double quotes ("), single quotes ('), a backslash (\), or control characters. The hexadecimal codes for invalid characters are:
\itemize{
\item x00 to x20
\item x22
\item x27
\item x5c
\item x7f or larger
}
}}
}
\description{
Starts logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.
}
\section{Accepted Parameters}{
\preformatted{enable_logging(
  ClusterIdentifier = "string",
  BucketName = "string",
  S3KeyPrefix = "string"
)
}
}

