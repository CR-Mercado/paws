% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/request.R
\name{new_request}
\alias{new_request}
\title{Return an API request object}
\usage{
new_request(client, operation, params, data)
}
\arguments{
\item{client}{A service client, e.g. from \code{new_service}.}

\item{operation}{An operation, e.g. from \code{new_operation}.}

\item{params}{A populated input object.}

\item{data}{An empty output object.}
}
\description{
Return an API request object, with everything needed to make a request.
}
