% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.autoscaling_operations.R
\name{describe_load_balancers}
\alias{describe_load_balancers}
\title{Describes the load balancers for the specified Auto Scaling group}
\usage{
describe_load_balancers(AutoScalingGroupName, NextToken = NULL,
  MaxRecords = NULL)
}
\arguments{
\item{AutoScalingGroupName}{[required] The name of the Auto Scaling group.}

\item{NextToken}{The token for the next set of items to return. (You received this token from a previous call.)}

\item{MaxRecords}{The maximum number of items to return with this call. The default value is 100 and the maximum value is 100.}
}
\description{
Describes the load balancers for the specified Auto Scaling group.
}
\details{
This operation describes only Classic Load Balancers. If you have Application Load Balancers, use DescribeLoadBalancerTargetGroups instead.
}
\section{Accepted Parameters}{
\preformatted{describe_load_balancers(
  AutoScalingGroupName = "string",
  NextToken = "string",
  MaxRecords = 123
)
}
}

\examples{
# This example describes the load balancers attached to the specified Auto
# Scaling group.
\donttest{describe_load_balancers(
  AutoScalingGroupName = "my-auto-scaling-group"
)}

}
