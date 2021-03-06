% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{describe_public_ipv_4_pools}
\alias{describe_public_ipv_4_pools}
\title{Describes the specified IPv4 address pools}
\usage{
describe_public_ipv_4_pools(PoolIds = NULL, NextToken = NULL,
  MaxResults = NULL)
}
\arguments{
\item{PoolIds}{The IDs of the address pools.}

\item{NextToken}{The token for the next page of results.}

\item{MaxResults}{The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned \code{nextToken} value.}
}
\description{
Describes the specified IPv4 address pools.
}
\section{Accepted Parameters}{
\preformatted{describe_public_ipv_4_pools(
  PoolIds = list(
    "string"
  ),
  NextToken = "string",
  MaxResults = 123
)
}
}

