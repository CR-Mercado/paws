% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lambda_operations.R
\name{list_versions_by_function}
\alias{list_versions_by_function}
\title{Returns a list of versions, with the version-specific configuration of each}
\usage{
list_versions_by_function(FunctionName, Marker = NULL, MaxItems = NULL)
}
\arguments{
\item{FunctionName}{[required] The name of the lambda function.

\strong{Name formats}
\itemize{
\item \strong{Function name} - \code{MyFunction}.
\item \strong{Function ARN} - \code{arn:aws:lambda:us-west-2:123456789012:function:MyFunction}.
\item \strong{Partial ARN} - \code{123456789012:function:MyFunction}.
}

The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.}

\item{Marker}{Specify the pagination token returned by a previous request to retrieve the next page of results.}

\item{MaxItems}{Limit the number of versions returned.}
}
\description{
Returns a list of \href{http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html}{versions}, with the version-specific configuration of each.
}
\section{Accepted Parameters}{
\preformatted{list_versions_by_function(
  FunctionName = "string",
  Marker = "string",
  MaxItems = 123
)
}
}

\examples{
# This operation retrieves a Lambda function versions
\donttest{list_versions_by_function(
  FunctionName = "myFunction",
  Marker = "",
  MaxItems = 123L
)}

}
