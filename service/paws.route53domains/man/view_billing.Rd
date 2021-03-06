% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.route53domains_operations.R
\name{view_billing}
\alias{view_billing}
\title{Returns all the domain-related billing records for the current AWS account for a specified period}
\usage{
view_billing(Start = NULL, End = NULL, Marker = NULL,
  MaxItems = NULL)
}
\arguments{
\item{Start}{The beginning date and time for the time period for which you want a list of billing records. Specify the date and time in Coordinated Universal time (UTC).}

\item{End}{The end date and time for the time period for which you want a list of billing records. Specify the date and time in Coordinated Universal time (UTC).}

\item{Marker}{For an initial request for a list of billing records, omit this element. If the number of billing records that are associated with the current AWS account during the specified period is greater than the value that you specified for \code{MaxItems}, you can use \code{Marker} to return additional billing records. Get the value of \code{NextPageMarker} from the previous response, and submit another request that includes the value of \code{NextPageMarker} in the \code{Marker} element.

Constraints: The marker must match the value of \code{NextPageMarker} that was returned in the previous response.}

\item{MaxItems}{The number of billing records to be returned.

Default: 20}
}
\description{
Returns all the domain-related billing records for the current AWS account for a specified period
}
\section{Accepted Parameters}{
\preformatted{view_billing(
  Start = as.POSIXct("2015-01-01"),
  End = as.POSIXct("2015-01-01"),
  Marker = "string",
  MaxItems = 123
)
}
}

