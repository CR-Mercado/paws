% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iot_operations.R
\name{list_authorizers}
\alias{list_authorizers}
\title{Lists the authorizers registered in your account}
\usage{
list_authorizers(pageSize = NULL, marker = NULL,
  ascendingOrder = NULL, status = NULL)
}
\arguments{
\item{pageSize}{The maximum number of results to return at one time.}

\item{marker}{A marker used to get the next set of results.}

\item{ascendingOrder}{Return the list of authorizers in ascending alphabetical order.}

\item{status}{The status of the list authorizers request.}
}
\description{
Lists the authorizers registered in your account.
}
\section{Accepted Parameters}{
\preformatted{list_authorizers(
  pageSize = 123,
  marker = "string",
  ascendingOrder = TRUE|FALSE,
  status = "ACTIVE"|"INACTIVE"
)
}
}

