% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.mediaconvert_operations.R
\name{list_queues}
\alias{list_queues}
\title{Retrieve a JSON array of up to twenty of your queues}
\usage{
list_queues(ListBy = NULL, MaxResults = NULL, NextToken = NULL,
  Order = NULL)
}
\arguments{
\item{ListBy}{}

\item{MaxResults}{Optional. Number of queues, up to twenty, that will be returned at one time.}

\item{NextToken}{Use this string, provided with the response to a previous request, to request the next batch of queues.}

\item{Order}{}
}
\description{
Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
}
\section{Accepted Parameters}{
\preformatted{list_queues(
  ListBy = "NAME"|"CREATION_DATE",
  MaxResults = 123,
  NextToken = "string",
  Order = "ASCENDING"|"DESCENDING"
)
}
}

