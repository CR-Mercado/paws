% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.appsync_operations.R
\name{list_types}
\alias{list_types}
\title{Lists the types for a given API}
\usage{
list_types(apiId, format, nextToken = NULL, maxResults = NULL)
}
\arguments{
\item{apiId}{[required] The API ID.}

\item{format}{[required] The type format: SDL or JSON.}

\item{nextToken}{An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.}

\item{maxResults}{The maximum number of results you want the request to return.}
}
\description{
Lists the types for a given API.
}
\section{Accepted Parameters}{
\preformatted{list_types(
  apiId = "string",
  format = "SDL"|"JSON",
  nextToken = "string",
  maxResults = 123
)
}
}

