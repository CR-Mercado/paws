% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{delete_vpc_endpoint_service_configurations}
\alias{delete_vpc_endpoint_service_configurations}
\title{Deletes one or more VPC endpoint service configurations in your account}
\usage{
delete_vpc_endpoint_service_configurations(DryRun = NULL, ServiceIds)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{ServiceIds}{[required] The IDs of one or more services.}
}
\description{
Deletes one or more VPC endpoint service configurations in your account. Before you delete the endpoint service configuration, you must reject any \code{Available} or \code{PendingAcceptance} interface endpoint connections that are attached to the service.
}
\section{Accepted Parameters}{
\preformatted{delete_vpc_endpoint_service_configurations(
  DryRun = TRUE|FALSE,
  ServiceIds = list(
    "string"
  )
)
}
}

