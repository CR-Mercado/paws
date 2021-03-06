% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.elasticache_operations.R
\name{describe_cache_security_groups}
\alias{describe_cache_security_groups}
\title{Returns a list of cache security group descriptions}
\usage{
describe_cache_security_groups(CacheSecurityGroupName = NULL,
  MaxRecords = NULL, Marker = NULL)
}
\arguments{
\item{CacheSecurityGroupName}{The name of the cache security group to return details for.}

\item{MaxRecords}{The maximum number of records to include in the response. If more records exist than the specified \code{MaxRecords} value, a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: minimum 20; maximum 100.}

\item{Marker}{An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by \code{MaxRecords}.}
}
\description{
Returns a list of cache security group descriptions. If a cache security group name is specified, the list contains only the description of that group.
}
\section{Accepted Parameters}{
\preformatted{describe_cache_security_groups(
  CacheSecurityGroupName = "string",
  MaxRecords = 123,
  Marker = "string"
)
}
}

