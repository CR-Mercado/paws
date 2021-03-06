% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.worklink_operations.R
\name{list_website_certificate_authorities}
\alias{list_website_certificate_authorities}
\title{Retrieves a list of certificate authorities added for the current account and Region}
\usage{
list_website_certificate_authorities(FleetArn, MaxResults = NULL,
  NextToken = NULL)
}
\arguments{
\item{FleetArn}{[required] The ARN of the fleet.}

\item{MaxResults}{The maximum number of results to be included in the next page.}

\item{NextToken}{The pagination token used to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.}
}
\description{
Retrieves a list of certificate authorities added for the current account and Region.
}
\section{Accepted Parameters}{
\preformatted{list_website_certificate_authorities(
  FleetArn = "string",
  MaxResults = 123,
  NextToken = "string"
)
}
}

