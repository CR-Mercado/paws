% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{detach_vpn_gateway}
\alias{detach_vpn_gateway}
\title{Detaches a virtual private gateway from a VPC}
\usage{
detach_vpn_gateway(VpcId, VpnGatewayId, DryRun = NULL)
}
\arguments{
\item{VpcId}{[required] The ID of the VPC.}

\item{VpnGatewayId}{[required] The ID of the virtual private gateway.}

\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Detaches a virtual private gateway from a VPC. You do this if you're planning to turn off the VPC and not use it anymore. You can confirm a virtual private gateway has been completely detached from a VPC by describing the virtual private gateway (any attachments to the virtual private gateway are also described).
}
\details{
You must wait for the attachment's state to switch to \code{detached} before you can delete the VPC or attach a different VPC to the virtual private gateway.
}
\section{Accepted Parameters}{
\preformatted{detach_vpn_gateway(
  VpcId = "string",
  VpnGatewayId = "string",
  DryRun = TRUE|FALSE
)
}
}

