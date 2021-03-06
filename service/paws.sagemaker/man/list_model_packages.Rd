% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.sagemaker_operations.R
\name{list_model_packages}
\alias{list_model_packages}
\title{Lists the model packages that have been created}
\usage{
list_model_packages(CreationTimeAfter = NULL,
  CreationTimeBefore = NULL, MaxResults = NULL, NameContains = NULL,
  NextToken = NULL, SortBy = NULL, SortOrder = NULL)
}
\arguments{
\item{CreationTimeAfter}{A filter that returns only model packages created after the specified time (timestamp).}

\item{CreationTimeBefore}{A filter that returns only model packages created before the specified time (timestamp).}

\item{MaxResults}{The maximum number of model packages to return in the response.}

\item{NameContains}{A string in the model package name. This filter returns only model packages whose name contains the specified string.}

\item{NextToken}{If the response to a previous \code{ListModelPackages} request was truncated, the response includes a \code{NextToken}. To retrieve the next set of model packages, use the token in the next request.}

\item{SortBy}{The parameter by which to sort the results. The default is \code{CreationTime}.}

\item{SortOrder}{The sort order for the results. The default is \code{Ascending}.}
}
\description{
Lists the model packages that have been created.
}
\section{Accepted Parameters}{
\preformatted{list_model_packages(
  CreationTimeAfter = as.POSIXct("2015-01-01"),
  CreationTimeBefore = as.POSIXct("2015-01-01"),
  MaxResults = 123,
  NameContains = "string",
  NextToken = "string",
  SortBy = "Name"|"CreationTime",
  SortOrder = "Ascending"|"Descending"
)
}
}

