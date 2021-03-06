% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.opsworks_operations.R
\name{describe_ecs_clusters}
\alias{describe_ecs_clusters}
\title{Describes Amazon ECS clusters that are registered with a stack}
\usage{
describe_ecs_clusters(EcsClusterArns = NULL, StackId = NULL,
  NextToken = NULL, MaxResults = NULL)
}
\arguments{
\item{EcsClusterArns}{A list of ARNs, one for each cluster to be described.}

\item{StackId}{A stack ID. \code{DescribeEcsClusters} returns a description of the cluster that is registered with the stack.}

\item{NextToken}{If the previous paginated request did not return all of the remaining results, the response object's\code{NextToken} parameter value is set to a token. To retrieve the next set of results, call \code{DescribeEcsClusters} again and assign that token to the request object's \code{NextToken} parameter. If there are no remaining results, the previous response object's \code{NextToken} parameter is set to \code{null}.}

\item{MaxResults}{To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a \code{NextToken} value that you can assign to the \code{NextToken} request parameter to get the next set of results.}
}
\description{
Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID, you can use the \code{MaxResults} and \code{NextToken} parameters to paginate the response. However, AWS OpsWorks Stacks currently supports only one cluster per layer, so the result set has a maximum of one element.
}
\details{
\strong{Required Permissions}: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permission. For more information about user permissions, see \href{http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.

This call accepts only one resource-identifying parameter.
}
\section{Accepted Parameters}{
\preformatted{describe_ecs_clusters(
  EcsClusterArns = list(
    "string"
  ),
  StackId = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

