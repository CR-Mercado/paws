% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.emr_operations.R
\name{list_steps}
\alias{list_steps}
\title{Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request}
\usage{
list_steps(ClusterId, StepStates = NULL, StepIds = NULL,
  Marker = NULL)
}
\arguments{
\item{ClusterId}{[required] The identifier of the cluster for which to list the steps.}

\item{StepStates}{The filter to limit the step list based on certain states.}

\item{StepIds}{The filter to limit the step list based on the identifier of the steps.}

\item{Marker}{The pagination token that indicates the next set of results to retrieve.}
}
\description{
Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request.
}
\section{Accepted Parameters}{
\preformatted{list_steps(
  ClusterId = "string",
  StepStates = list(
    "PENDING"|"CANCEL_PENDING"|"RUNNING"|"COMPLETED"|"CANCELLED"|"FAILED"|"INTERRUPTED"
  ),
  StepIds = list(
    "string"
  ),
  Marker = "string"
)
}
}

