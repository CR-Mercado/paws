% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.elasticache_operations.R
\name{purchase_reserved_cache_nodes_offering}
\alias{purchase_reserved_cache_nodes_offering}
\title{Allows you to purchase a reserved cache node offering}
\usage{
purchase_reserved_cache_nodes_offering(ReservedCacheNodesOfferingId,
  ReservedCacheNodeId = NULL, CacheNodeCount = NULL)
}
\arguments{
\item{ReservedCacheNodesOfferingId}{[required] The ID of the reserved cache node offering to purchase.

Example: \code{438012d3-4052-4cc7-b2e3-8d3372e0e706}}

\item{ReservedCacheNodeId}{A customer-specified identifier to track this reservation.

The Reserved Cache Node ID is an unique customer-specified identifier to track this reservation. If this parameter is not specified, ElastiCache automatically generates an identifier for the reservation.

Example: myreservationID}

\item{CacheNodeCount}{The number of cache node instances to reserve.

Default: \code{1}}
}
\description{
Allows you to purchase a reserved cache node offering.
}
\section{Accepted Parameters}{
\preformatted{purchase_reserved_cache_nodes_offering(
  ReservedCacheNodesOfferingId = "string",
  ReservedCacheNodeId = "string",
  CacheNodeCount = 123
)
}
}

