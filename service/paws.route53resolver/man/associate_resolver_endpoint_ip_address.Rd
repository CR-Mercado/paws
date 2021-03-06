% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.route53resolver_operations.R
\name{associate_resolver_endpoint_ip_address}
\alias{associate_resolver_endpoint_ip_address}
\title{Adds IP addresses to an inbound or an outbound resolver endpoint}
\usage{
associate_resolver_endpoint_ip_address(ResolverEndpointId, IpAddress)
}
\arguments{
\item{ResolverEndpointId}{[required] The ID of the resolver endpoint that you want to associate IP addresses with.}

\item{IpAddress}{[required] Either the IPv4 address that you want to add to a resolver endpoint or a subnet ID. If you specify a subnet ID, Resolver chooses an IP address for you from the available IPs in the specified subnet.}
}
\description{
Adds IP addresses to an inbound or an outbound resolver endpoint. If you want to adding more than one IP address, submit one \code{AssociateResolverEndpointIpAddress} request for each IP address.
}
\details{
To remove an IP address from an endpoint, see DisassociateResolverEndpointIpAddress.
}
\section{Accepted Parameters}{
\preformatted{associate_resolver_endpoint_ip_address(
  ResolverEndpointId = "string",
  IpAddress = list(
    IpId = "string",
    SubnetId = "string",
    Ip = "string"
  )
)
}
}

