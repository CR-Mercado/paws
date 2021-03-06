% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{authorize_client_vpn_ingress}
\alias{authorize_client_vpn_ingress}
\title{Adds an ingress authorization rule to a Client VPN endpoint}
\usage{
authorize_client_vpn_ingress(ClientVpnEndpointId, TargetNetworkCidr,
  AccessGroupId = NULL, AuthorizeAllGroups = NULL,
  Description = NULL, DryRun = NULL)
}
\arguments{
\item{ClientVpnEndpointId}{[required] The ID of the Client VPN endpoint.}

\item{TargetNetworkCidr}{[required] The IPv4 address range, in CIDR notation, of the network for which access is being authorized.}

\item{AccessGroupId}{The ID of the Active Directory group to grant access.}

\item{AuthorizeAllGroups}{Indicates whether to grant access to all clients. Use \code{true} to grant all clients who successfully establish a VPN connection access to the network.}

\item{Description}{A brief description of the authorization rule.}

\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Adds an ingress authorization rule to a Client VPN endpoint. Ingress authorization rules act as firewall rules that grant access to networks. You must configure ingress authorization rules to enable clients to access resources in AWS or on-premises networks.
}
\section{Accepted Parameters}{
\preformatted{authorize_client_vpn_ingress(
  ClientVpnEndpointId = "string",
  TargetNetworkCidr = "string",
  AccessGroupId = "string",
  AuthorizeAllGroups = TRUE|FALSE,
  Description = "string",
  DryRun = TRUE|FALSE
)
}
}

