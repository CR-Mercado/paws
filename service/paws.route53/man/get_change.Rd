% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.route53_operations.R
\name{get_change}
\alias{get_change}
\title{Returns the current status of a change batch request}
\usage{
get_change(Id)
}
\arguments{
\item{Id}{[required] The ID of the change batch request. The value that you specify here is the value that \code{ChangeResourceRecordSets} returned in the \code{Id} element when you submitted the request.}
}
\description{
Returns the current status of a change batch request. The status is one of the following values:
}
\details{
\itemize{
\item \code{PENDING} indicates that the changes in this request have not propagated to all Amazon Route 53 DNS servers. This is the initial status of all change batch requests.
\item \code{INSYNC} indicates that the changes have propagated to all Route 53 DNS servers.
}
}
\section{Accepted Parameters}{
\preformatted{get_change(
  Id = "string"
)
}
}

