% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.opsworks_operations.R
\name{describe_layers}
\alias{describe_layers}
\title{Requests a description of one or more layers in a specified stack}
\usage{
describe_layers(StackId = NULL, LayerIds = NULL)
}
\arguments{
\item{StackId}{The stack ID.}

\item{LayerIds}{An array of layer IDs that specify the layers to be described. If you omit this parameter, \code{DescribeLayers} returns a description of every layer in the specified stack.}
}
\description{
Requests a description of one or more layers in a specified stack.
}
\details{
This call accepts only one resource-identifying parameter.

\strong{Required Permissions}: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see \href{http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.
}
\section{Accepted Parameters}{
\preformatted{describe_layers(
  StackId = "string",
  LayerIds = list(
    "string"
  )
)
}
}

