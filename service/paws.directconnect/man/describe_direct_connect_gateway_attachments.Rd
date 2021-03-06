% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.directconnect_operations.R
\name{describe_direct_connect_gateway_attachments}
\alias{describe_direct_connect_gateway_attachments}
\title{Lists the attachments between your Direct Connect gateways and virtual interfaces}
\usage{

  describe_direct_connect_gateway_attachments(directConnectGatewayId = NULL,
  virtualInterfaceId = NULL, maxResults = NULL, nextToken = NULL)
}
\arguments{
\item{directConnectGatewayId}{The ID of the Direct Connect gateway.}

\item{virtualInterfaceId}{The ID of the virtual interface.}

\item{maxResults}{The maximum number of attachments to return per page.}

\item{nextToken}{The token provided in the previous call to retrieve the next page.}
}
\description{
Lists the attachments between your Direct Connect gateways and virtual interfaces. You must specify a Direct Connect gateway, a virtual interface, or both. If you specify a Direct Connect gateway, the response contains all virtual interfaces attached to the Direct Connect gateway. If you specify a virtual interface, the response contains all Direct Connect gateways attached to the virtual interface. If you specify both, the response contains the attachment between the Direct Connect gateway and the virtual interface.
}
\section{Accepted Parameters}{
\preformatted{describe_direct_connect_gateway_attachments(
  directConnectGatewayId = "string",
  virtualInterfaceId = "string",
  maxResults = 123,
  nextToken = "string"
)
}
}

