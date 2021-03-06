% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iot_operations.R
\name{list_outgoing_certificates}
\alias{list_outgoing_certificates}
\title{Lists certificates that are being transferred but not yet accepted}
\usage{
list_outgoing_certificates(pageSize = NULL, marker = NULL,
  ascendingOrder = NULL)
}
\arguments{
\item{pageSize}{The result page size.}

\item{marker}{The marker for the next set of results.}

\item{ascendingOrder}{Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.}
}
\description{
Lists certificates that are being transferred but not yet accepted.
}
\section{Accepted Parameters}{
\preformatted{list_outgoing_certificates(
  pageSize = 123,
  marker = "string",
  ascendingOrder = TRUE|FALSE
)
}
}

