% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{delete_vpc_endpoints}
\alias{delete_vpc_endpoints}
\title{Deletes one or more specified VPC endpoints}
\usage{
delete_vpc_endpoints(DryRun = NULL, VpcEndpointIds)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{VpcEndpointIds}{[required] One or more VPC endpoint IDs.}
}
\description{
Deletes one or more specified VPC endpoints. Deleting a gateway endpoint also deletes the endpoint routes in the route tables that were associated with the endpoint. Deleting an interface endpoint deletes the endpoint network interfaces.
}
\section{Accepted Parameters}{
\preformatted{delete_vpc_endpoints(
  DryRun = TRUE|FALSE,
  VpcEndpointIds = list(
    "string"
  )
)
}
}

