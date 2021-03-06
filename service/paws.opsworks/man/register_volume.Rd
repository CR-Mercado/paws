% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.opsworks_operations.R
\name{register_volume}
\alias{register_volume}
\title{Registers an Amazon EBS volume with a specified stack}
\usage{
register_volume(Ec2VolumeId = NULL, StackId)
}
\arguments{
\item{Ec2VolumeId}{The Amazon EBS volume ID.}

\item{StackId}{[required] The stack ID.}
}
\description{
Registers an Amazon EBS volume with a specified stack. A volume can be registered with only one stack at a time. If the volume is already registered, you must first deregister it by calling DeregisterVolume. For more information, see \href{http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html}{Resource Management}.
}
\details{
\strong{Required Permissions}: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see \href{http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.
}
\section{Accepted Parameters}{
\preformatted{register_volume(
  Ec2VolumeId = "string",
  StackId = "string"
)
}
}

