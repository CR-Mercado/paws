% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.directconnect_operations.R
\name{confirm_private_virtual_interface}
\alias{confirm_private_virtual_interface}
\title{Accepts ownership of a private virtual interface created by another AWS account}
\usage{
confirm_private_virtual_interface(virtualInterfaceId,
  virtualGatewayId = NULL, directConnectGatewayId = NULL)
}
\arguments{
\item{virtualInterfaceId}{[required] The ID of the virtual interface.}

\item{virtualGatewayId}{The ID of the virtual private gateway.}

\item{directConnectGatewayId}{The ID of the Direct Connect gateway.}
}
\description{
Accepts ownership of a private virtual interface created by another AWS account.
}
\details{
After the virtual interface owner makes this call, the virtual interface is created and attached to the specified virtual private gateway or Direct Connect gateway, and is made available to handle traffic.
}
\section{Accepted Parameters}{
\preformatted{confirm_private_virtual_interface(
  virtualInterfaceId = "string",
  virtualGatewayId = "string",
  directConnectGatewayId = "string"
)
}
}

