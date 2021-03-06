% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.appmesh_operations.R
\name{update_virtual_node}
\alias{update_virtual_node}
\title{Updates an existing virtual node in a specified service mesh}
\usage{
update_virtual_node(clientToken = NULL, meshName, spec, virtualNodeName)
}
\arguments{
\item{clientToken}{Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Up to 36 letters, numbers, hyphens, and underscores are allowed.}

\item{meshName}{[required] The name of the service mesh in which the virtual node resides.}

\item{spec}{[required] The new virtual node specification to apply. This overwrites the existing data.}

\item{virtualNodeName}{[required] The name of the virtual node to update.}
}
\description{
Updates an existing virtual node in a specified service mesh.
}
\section{Accepted Parameters}{
\preformatted{update_virtual_node(
  clientToken = "string",
  meshName = "string",
  spec = list(
    backends = list(
      "string"
    ),
    listeners = list(
      list(
        healthCheck = list(
          healthyThreshold = 123,
          intervalMillis = 123,
          path = "string",
          port = 123,
          protocol = "http"|"tcp",
          timeoutMillis = 123,
          unhealthyThreshold = 123
        ),
        portMapping = list(
          port = 123,
          protocol = "http"|"tcp"
        )
      )
    ),
    serviceDiscovery = list(
      dns = list(
        serviceName = "string"
      )
    )
  ),
  virtualNodeName = "string"
)
}
}

