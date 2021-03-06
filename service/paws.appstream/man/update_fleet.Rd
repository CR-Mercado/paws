% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.appstream_operations.R
\name{update_fleet}
\alias{update_fleet}
\title{Updates the specified fleet}
\usage{
update_fleet(ImageName = NULL, ImageArn = NULL, Name = NULL,
  InstanceType = NULL, ComputeCapacity = NULL, VpcConfig = NULL,
  MaxUserDurationInSeconds = NULL, DisconnectTimeoutInSeconds = NULL,
  DeleteVpcConfig = NULL, Description = NULL, DisplayName = NULL,
  EnableDefaultInternetAccess = NULL, DomainJoinInfo = NULL,
  AttributesToDelete = NULL)
}
\arguments{
\item{ImageName}{The name of the image used to create the fleet.}

\item{ImageArn}{The ARN of the public, private, or shared image to use.}

\item{Name}{A unique name for the fleet.}

\item{InstanceType}{The instance type to use when launching fleet instances. The following instance types are available:
\itemize{
\item stream.standard.medium
\item stream.standard.large
\item stream.compute.large
\item stream.compute.xlarge
\item stream.compute.2xlarge
\item stream.compute.4xlarge
\item stream.compute.8xlarge
\item stream.memory.large
\item stream.memory.xlarge
\item stream.memory.2xlarge
\item stream.memory.4xlarge
\item stream.memory.8xlarge
\item stream.graphics-design.large
\item stream.graphics-design.xlarge
\item stream.graphics-design.2xlarge
\item stream.graphics-design.4xlarge
\item stream.graphics-desktop.2xlarge
\item stream.graphics-pro.4xlarge
\item stream.graphics-pro.8xlarge
\item stream.graphics-pro.16xlarge
}}

\item{ComputeCapacity}{The desired capacity for the fleet.}

\item{VpcConfig}{The VPC configuration for the fleet.}

\item{MaxUserDurationInSeconds}{The maximum time that a streaming session can run, in seconds. Specify a value between 600 and 57600.}

\item{DisconnectTimeoutInSeconds}{The time after disconnection when a session is considered to have ended, in seconds. If a user who was disconnected reconnects within this time interval, the user is connected to their previous session. Specify a value between 60 and 57600.}

\item{DeleteVpcConfig}{Deletes the VPC association for the specified fleet.}

\item{Description}{The description to display.}

\item{DisplayName}{The fleet name to display.}

\item{EnableDefaultInternetAccess}{Enables or disables default internet access for the fleet.}

\item{DomainJoinInfo}{The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain.}

\item{AttributesToDelete}{The fleet attributes to delete.}
}
\description{
Updates the specified fleet.
}
\details{
If the fleet is in the \code{STOPPED} state, you can update any attribute except the fleet name. If the fleet is in the \code{RUNNING} state, you can update the \code{DisplayName} and \code{ComputeCapacity} attributes. If the fleet is in the \code{STARTING} or \code{STOPPING} state, you can't update it.
}
\section{Accepted Parameters}{
\preformatted{update_fleet(
  ImageName = "string",
  ImageArn = "string",
  Name = "string",
  InstanceType = "string",
  ComputeCapacity = list(
    DesiredInstances = 123
  ),
  VpcConfig = list(
    SubnetIds = list(
      "string"
    ),
    SecurityGroupIds = list(
      "string"
    )
  ),
  MaxUserDurationInSeconds = 123,
  DisconnectTimeoutInSeconds = 123,
  DeleteVpcConfig = TRUE|FALSE,
  Description = "string",
  DisplayName = "string",
  EnableDefaultInternetAccess = TRUE|FALSE,
  DomainJoinInfo = list(
    DirectoryName = "string",
    OrganizationalUnitDistinguishedName = "string"
  ),
  AttributesToDelete = list(
    "VPC_CONFIGURATION"|"VPC_CONFIGURATION_SECURITY_GROUP_IDS"|"DOMAIN_JOIN_INFO"
  )
)
}
}

