% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.opsworks_operations.R
\name{describe_instances}
\alias{describe_instances}
\title{Requests a description of a set of instances}
\usage{
describe_instances(StackId = NULL, LayerId = NULL,
  InstanceIds = NULL)
}
\arguments{
\item{StackId}{A stack ID. If you use this parameter, \code{DescribeInstances} returns descriptions of the instances associated with the specified stack.}

\item{LayerId}{A layer ID. If you use this parameter, \code{DescribeInstances} returns descriptions of the instances associated with the specified layer.}

\item{InstanceIds}{An array of instance IDs to be described. If you use this parameter, \code{DescribeInstances} returns a description of the specified instances. Otherwise, it returns a description of every instance.}
}
\description{
Requests a description of a set of instances.
}
\details{
This call accepts only one resource-identifying parameter.

\strong{Required Permissions}: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see \href{http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.
}
\section{Accepted Parameters}{
\preformatted{describe_instances(
  StackId = "string",
  LayerId = "string",
  InstanceIds = list(
    "string"
  )
)
}
}

