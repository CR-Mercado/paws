% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{modify_fleet}
\alias{modify_fleet}
\title{Modifies the specified EC2 Fleet}
\usage{
modify_fleet(DryRun = NULL, ExcessCapacityTerminationPolicy = NULL,
  FleetId, TargetCapacitySpecification)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{ExcessCapacityTerminationPolicy}{Indicates whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.}

\item{FleetId}{[required] The ID of the EC2 Fleet.}

\item{TargetCapacitySpecification}{[required] The size of the EC2 Fleet.}
}
\description{
Modifies the specified EC2 Fleet.
}
\details{
While the EC2 Fleet is being modified, it is in the \code{modifying} state.
}
\section{Accepted Parameters}{
\preformatted{modify_fleet(
  DryRun = TRUE|FALSE,
  ExcessCapacityTerminationPolicy = "no-termination"|"termination",
  FleetId = "string",
  TargetCapacitySpecification = list(
    TotalTargetCapacity = 123,
    OnDemandTargetCapacity = 123,
    SpotTargetCapacity = 123,
    DefaultTargetCapacityType = "spot"|"on-demand"
  )
)
}
}

