% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.sagemaker_operations.R
\name{list_training_jobs}
\alias{list_training_jobs}
\title{Lists training jobs}
\usage{
list_training_jobs(NextToken = NULL, MaxResults = NULL,
  CreationTimeAfter = NULL, CreationTimeBefore = NULL,
  LastModifiedTimeAfter = NULL, LastModifiedTimeBefore = NULL,
  NameContains = NULL, StatusEquals = NULL, SortBy = NULL,
  SortOrder = NULL)
}
\arguments{
\item{NextToken}{If the result of the previous \code{ListTrainingJobs} request was truncated, the response includes a \code{NextToken}. To retrieve the next set of training jobs, use the token in the next request.}

\item{MaxResults}{The maximum number of training jobs to return in the response.}

\item{CreationTimeAfter}{A filter that returns only training jobs created after the specified time (timestamp).}

\item{CreationTimeBefore}{A filter that returns only training jobs created before the specified time (timestamp).}

\item{LastModifiedTimeAfter}{A filter that returns only training jobs modified after the specified time (timestamp).}

\item{LastModifiedTimeBefore}{A filter that returns only training jobs modified before the specified time (timestamp).}

\item{NameContains}{A string in the training job name. This filter returns only training jobs whose name contains the specified string.}

\item{StatusEquals}{A filter that retrieves only training jobs with a specific status.}

\item{SortBy}{The field to sort results by. The default is \code{CreationTime}.}

\item{SortOrder}{The sort order for results. The default is \code{Ascending}.}
}
\description{
Lists training jobs.
}
\section{Accepted Parameters}{
\preformatted{list_training_jobs(
  NextToken = "string",
  MaxResults = 123,
  CreationTimeAfter = as.POSIXct("2015-01-01"),
  CreationTimeBefore = as.POSIXct("2015-01-01"),
  LastModifiedTimeAfter = as.POSIXct("2015-01-01"),
  LastModifiedTimeBefore = as.POSIXct("2015-01-01"),
  NameContains = "string",
  StatusEquals = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
  SortBy = "Name"|"CreationTime"|"Status",
  SortOrder = "Ascending"|"Descending"
)
}
}

