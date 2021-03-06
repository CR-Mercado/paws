% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudformation_operations.R
\name{detect_stack_resource_drift}
\alias{detect_stack_resource_drift}
\title{Returns information about whether a resource's actual configuration differs, or has \emph{drifted}, from it's expected configuration, as defined in the stack template and any values specified as template parameters}
\usage{
detect_stack_resource_drift(StackName, LogicalResourceId)
}
\arguments{
\item{StackName}{[required] The name of the stack to which the resource belongs.}

\item{LogicalResourceId}{[required] The logical name of the resource for which to return drift information.}
}
\description{
Returns information about whether a resource's actual configuration differs, or has \emph{drifted}, from it's expected configuration, as defined in the stack template and any values specified as template parameters. This information includes actual and expected property values for resources in which AWS CloudFormation detects drift. Only resource properties explicitly defined in the stack template are checked for drift. For more information about stack and resource drift, see \href{http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html}{Detecting Unregulated Configuration Changes to Stacks and Resources}.
}
\details{
Use \code{DetectStackResourceDrift} to detect drift on individual resources, or DetectStackDrift to detect drift on all resources in a given stack that support drift detection.

Resources that do not currently support drift detection cannot be checked. For a list of resources that support drift detection, see \href{http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html}{Resources that Support Drift Detection}.
}
\section{Accepted Parameters}{
\preformatted{detect_stack_resource_drift(
  StackName = "string",
  LogicalResourceId = "string"
)
}
}

