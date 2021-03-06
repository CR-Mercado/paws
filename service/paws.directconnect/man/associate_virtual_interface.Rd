% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.directconnect_operations.R
\name{associate_virtual_interface}
\alias{associate_virtual_interface}
\title{Associates a virtual interface with a specified link aggregation group (LAG) or connection}
\usage{
associate_virtual_interface(virtualInterfaceId, connectionId)
}
\arguments{
\item{virtualInterfaceId}{[required] The ID of the virtual interface.}

\item{connectionId}{[required] The ID of the LAG or connection.}
}
\description{
Associates a virtual interface with a specified link aggregation group (LAG) or connection. Connectivity to AWS is temporarily interrupted as the virtual interface is being migrated. If the target connection or LAG has an associated virtual interface with a conflicting VLAN number or a conflicting IP address, the operation fails.
}
\details{
Virtual interfaces associated with a hosted connection cannot be associated with a LAG; hosted connections must be migrated along with their virtual interfaces using AssociateHostedConnection.

To reassociate a virtual interface to a new connection or LAG, the requester must own either the virtual interface itself or the connection to which the virtual interface is currently associated. Additionally, the requester must own the connection or LAG for the association.
}
\section{Accepted Parameters}{
\preformatted{associate_virtual_interface(
  virtualInterfaceId = "string",
  connectionId = "string"
)
}
}

