% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.pinpointemail_operations.R
\name{get_domain_statistics_report}
\alias{get_domain_statistics_report}
\title{Retrieve inbox placement and engagement rates for the domains that you use to send email}
\usage{
get_domain_statistics_report(Domain, StartDate, EndDate)
}
\arguments{
\item{Domain}{[required] The domain that you want to obtain deliverability metrics for.}

\item{StartDate}{[required] The first day (in Unix time) that you want to obtain domain deliverability metrics for.}

\item{EndDate}{[required] The last day (in Unix time) that you want to obtain domain deliverability metrics for. The \code{EndDate} that you specify has to be less than or equal to 30 days after the \code{StartDate}.}
}
\description{
Retrieve inbox placement and engagement rates for the domains that you use to send email.
}
\section{Accepted Parameters}{
\preformatted{get_domain_statistics_report(
  Domain = "string",
  StartDate = as.POSIXct("2015-01-01"),
  EndDate = as.POSIXct("2015-01-01")
)
}
}

