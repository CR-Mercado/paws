% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.mq_operations.R
\name{list_configurations}
\alias{list_configurations}
\title{Returns a list of all configurations}
\usage{
list_configurations(MaxResults = NULL, NextToken = NULL)
}
\arguments{
\item{MaxResults}{The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.}

\item{NextToken}{The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.}
}
\description{
Returns a list of all configurations.
}
\section{Accepted Parameters}{
\preformatted{list_configurations(
  MaxResults = 123,
  NextToken = "string"
)
}
}

