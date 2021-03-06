% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudwatchlogs_operations.R
\name{describe_export_tasks}
\alias{describe_export_tasks}
\title{Lists the specified export tasks}
\usage{
describe_export_tasks(taskId = NULL, statusCode = NULL,
  nextToken = NULL, limit = NULL)
}
\arguments{
\item{taskId}{The ID of the export task. Specifying a task ID filters the results to zero or one export tasks.}

\item{statusCode}{The status code of the export task. Specifying a status code filters the results to zero or more export tasks.}

\item{nextToken}{The token for the next set of items to return. (You received this token from a previous call.)}

\item{limit}{The maximum number of items returned. If you don't specify a value, the default is up to 50 items.}
}
\description{
Lists the specified export tasks. You can list all your export tasks or filter the results based on task ID or task status.
}
\section{Accepted Parameters}{
\preformatted{describe_export_tasks(
  taskId = "string",
  statusCode = "CANCELLED"|"COMPLETED"|"FAILED"|"PENDING"|"PENDING_CANCEL"|"RUNNING",
  nextToken = "string",
  limit = 123
)
}
}

