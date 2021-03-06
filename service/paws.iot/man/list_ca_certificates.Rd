% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iot_operations.R
\name{list_ca_certificates}
\alias{list_ca_certificates}
\title{Lists the CA certificates registered for your AWS account}
\usage{
list_ca_certificates(pageSize = NULL, marker = NULL,
  ascendingOrder = NULL)
}
\arguments{
\item{pageSize}{The result page size.}

\item{marker}{The marker for the next set of results.}

\item{ascendingOrder}{Determines the order of the results.}
}
\description{
Lists the CA certificates registered for your AWS account.
}
\details{
The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.
}
\section{Accepted Parameters}{
\preformatted{list_ca_certificates(
  pageSize = 123,
  marker = "string",
  ascendingOrder = TRUE|FALSE
)
}
}

