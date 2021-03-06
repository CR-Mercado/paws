% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.comprehend_operations.R
\name{list_entity_recognizers}
\alias{list_entity_recognizers}
\title{Gets a list of the properties of all entity recognizers that you created, including recognizers currently in training}
\usage{
list_entity_recognizers(Filter = NULL, NextToken = NULL,
  MaxResults = NULL)
}
\arguments{
\item{Filter}{Filters the list of entities returned. You can filter on \code{Status}, \code{SubmitTimeBefore}, or \code{SubmitTimeAfter}. You can only set one filter at a time.}

\item{NextToken}{Identifies the next page of results to return.}

\item{MaxResults}{The maximum number of results to return on each page. The default is 100.}
}
\description{
Gets a list of the properties of all entity recognizers that you created, including recognizers currently in training. Allows you to filter the list of recognizers based on criteria such as status and submission time. This call returns up to 500 entity recognizers in the list, with a default number of 100 recognizers in the list.
}
\details{
The results of this list are not in any particular order. Please get the list and sort locally if needed.
}
\section{Accepted Parameters}{
\preformatted{list_entity_recognizers(
  Filter = list(
    Status = "SUBMITTED"|"TRAINING"|"DELETING"|"STOP_REQUESTED"|"STOPPED"|"IN_ERROR"|"TRAINED",
    SubmitTimeBefore = as.POSIXct("2015-01-01"),
    SubmitTimeAfter = as.POSIXct("2015-01-01")
  ),
  NextToken = "string",
  MaxResults = 123
)
}
}

