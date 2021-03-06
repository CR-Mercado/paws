% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{delete_transit_gateway_route}
\alias{delete_transit_gateway_route}
\title{Deletes the specified route from the specified transit gateway route table}
\usage{
delete_transit_gateway_route(TransitGatewayRouteTableId,
  DestinationCidrBlock, DryRun = NULL)
}
\arguments{
\item{TransitGatewayRouteTableId}{[required] The ID of the transit gateway route table.}

\item{DestinationCidrBlock}{[required] The CIDR range for the route. This must match the CIDR for the route exactly.}

\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Deletes the specified route from the specified transit gateway route table.
}
\section{Accepted Parameters}{
\preformatted{delete_transit_gateway_route(
  TransitGatewayRouteTableId = "string",
  DestinationCidrBlock = "string",
  DryRun = TRUE|FALSE
)
}
}

