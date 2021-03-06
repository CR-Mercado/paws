% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{describe_import_image_tasks}
\alias{describe_import_image_tasks}
\title{Displays details about an import virtual machine or import snapshot tasks that are already created}
\usage{
describe_import_image_tasks(DryRun = NULL, Filters = NULL,
  ImportTaskIds = NULL, MaxResults = NULL, NextToken = NULL)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{Filters}{Filter tasks using the \code{task-state} filter and one of the following values: active, completed, deleting, deleted.}

\item{ImportTaskIds}{A list of import image task IDs.}

\item{MaxResults}{The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned \code{NextToken} value.}

\item{NextToken}{A token that indicates the next page of results.}
}
\description{
Displays details about an import virtual machine or import snapshot tasks that are already created.
}
\section{Accepted Parameters}{
\preformatted{describe_import_image_tasks(
  DryRun = TRUE|FALSE,
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  ),
  ImportTaskIds = list(
    "string"
  ),
  MaxResults = 123,
  NextToken = "string"
)
}
}

