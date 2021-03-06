% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{create_transit_gateway_vpc_attachment}
\alias{create_transit_gateway_vpc_attachment}
\title{Attaches the specified VPC to the specified transit gateway}
\usage{
create_transit_gateway_vpc_attachment(TransitGatewayId, VpcId, SubnetIds,
  Options = NULL, TagSpecifications = NULL, DryRun = NULL)
}
\arguments{
\item{TransitGatewayId}{[required] The ID of the transit gateway.}

\item{VpcId}{[required] The ID of the VPC.}

\item{SubnetIds}{[required] The IDs of one or more subnets. You can specify only one subnet per Availability Zone. You must specify at least one subnet, but we recommend that you specify two subnets for better availability. The transit gateway uses one IP address from each specified subnet.}

\item{Options}{The VPC attachment options.}

\item{TagSpecifications}{The tags to apply to the VPC attachment.}

\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Attaches the specified VPC to the specified transit gateway.
}
\details{
If you attach a VPC with a CIDR range that overlaps the CIDR range of a VPC that is already attached, the new VPC CIDR range is not propagated to the default propagation route table.

To send VPC traffic to an attached transit gateway, add a route to the VPC route table using CreateRoute.
}
\section{Accepted Parameters}{
\preformatted{create_transit_gateway_vpc_attachment(
  TransitGatewayId = "string",
  VpcId = "string",
  SubnetIds = list(
    "string"
  ),
  Options = list(
    DnsSupport = "enable"|"disable",
    Ipv6Support = "enable"|"disable"
  ),
  TagSpecifications = list(
    list(
      ResourceType = "customer-gateway"|"dedicated-host"|"dhcp-options"|"elastic-ip"|"fleet"|"fpga-image"|"image"|"instance"|"internet-gateway"|"launch-template"|"natgateway"|"network-acl"|"network-interface"|"reserved-instances"|"route-table"|"security-group"|"snapshot"|"spot-instances-request"|"subnet"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-route-table"|"volume"|"vpc"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
  ),
  DryRun = TRUE|FALSE
)
}
}

