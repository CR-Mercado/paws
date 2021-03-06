% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ecs_operations.R
\name{register_container_instance}
\alias{register_container_instance}
\title{This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent}
\usage{
register_container_instance(cluster = NULL,
  instanceIdentityDocument = NULL,
  instanceIdentityDocumentSignature = NULL, totalResources = NULL,
  versionInfo = NULL, containerInstanceArn = NULL, attributes = NULL,
  platformDevices = NULL, tags = NULL)
}
\arguments{
\item{cluster}{The short name or full Amazon Resource Name (ARN) of the cluster with which to register your container instance. If you do not specify a cluster, the default cluster is assumed.}

\item{instanceIdentityDocument}{The instance identity document for the EC2 instance to register. This document can be found by running the following command from the instance: \code{curl http://169.254.169.254/latest/dynamic/instance-identity/document/}}

\item{instanceIdentityDocumentSignature}{The instance identity document signature for the EC2 instance to register. This signature can be found by running the following command from the instance: \code{curl http://169.254.169.254/latest/dynamic/instance-identity/signature/}}

\item{totalResources}{The resources available on the instance.}

\item{versionInfo}{The version information for the Amazon ECS container agent and Docker daemon running on the container instance.}

\item{containerInstanceArn}{The ARN of the container instance (if it was previously registered).}

\item{attributes}{The container instance attributes that this container instance supports.}

\item{platformDevices}{The devices that are available on the container instance. The only supported device type is a GPU.}

\item{tags}{The metadata that you apply to the container instance to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.}
}
\description{
This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.
}
\details{
Registers an EC2 instance into the specified cluster. This instance becomes available to place containers on.
}
\section{Accepted Parameters}{
\preformatted{register_container_instance(
  cluster = "string",
  instanceIdentityDocument = "string",
  instanceIdentityDocumentSignature = "string",
  totalResources = list(
    list(
      name = "string",
      type = "string",
      doubleValue = 123.0,
      longValue = 123,
      integerValue = 123,
      stringSetValue = list(
        "string"
      )
    )
  ),
  versionInfo = list(
    agentVersion = "string",
    agentHash = "string",
    dockerVersion = "string"
  ),
  containerInstanceArn = "string",
  attributes = list(
    list(
      name = "string",
      value = "string",
      targetType = "container-instance",
      targetId = "string"
    )
  ),
  platformDevices = list(
    list(
      id = "string",
      type = "GPU"
    )
  ),
  tags = list(
    list(
      key = "string",
      value = "string"
    )
  )
)
}
}

