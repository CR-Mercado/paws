% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{modify_client_vpn_endpoint}
\alias{modify_client_vpn_endpoint}
\title{Modifies the specified Client VPN endpoint}
\usage{
modify_client_vpn_endpoint(ClientVpnEndpointId,
  ServerCertificateArn = NULL, ConnectionLogOptions = NULL,
  DnsServers = NULL, Description = NULL, DryRun = NULL)
}
\arguments{
\item{ClientVpnEndpointId}{[required] The ID of the Client VPN endpoint to modify.}

\item{ServerCertificateArn}{The ARN of the server certificate to be used. The server certificate must be provisioned in AWS Certificate Manager (ACM).}

\item{ConnectionLogOptions}{Information about the client connection logging options.

If you enable client connection logging, data about client connections is sent to a Cloudwatch Logs log stream. The following information is logged:
\itemize{
\item Client connection requests
\item Client connection results (successful and unsuccessful)
\item Reasons for unsuccessful client connection requests
\item Client connection termination time
}}

\item{DnsServers}{Information about the DNS servers to be used by Client VPN connections. A Client VPN endpoint can have up to two DNS servers.}

\item{Description}{A brief description of the Client VPN endpoint.}

\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Modifies the specified Client VPN endpoint. You can only modify an endpoint's server certificate information, client connection logging information, DNS server, and description. Modifying the DNS server resets existing client connections.
}
\section{Accepted Parameters}{
\preformatted{modify_client_vpn_endpoint(
  ClientVpnEndpointId = "string",
  ServerCertificateArn = "string",
  ConnectionLogOptions = list(
    Enabled = TRUE|FALSE,
    CloudwatchLogGroup = "string",
    CloudwatchLogStream = "string"
  ),
  DnsServers = list(
    CustomDnsServers = list(
      "string"
    ),
    Enabled = TRUE|FALSE
  ),
  Description = "string",
  DryRun = TRUE|FALSE
)
}
}

