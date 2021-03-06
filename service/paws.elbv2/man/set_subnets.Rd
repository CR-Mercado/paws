% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.elbv2_operations.R
\name{set_subnets}
\alias{set_subnets}
\title{Enables the Availability Zone for the specified public subnets for the specified Application Load Balancer}
\usage{
set_subnets(LoadBalancerArn, Subnets = NULL, SubnetMappings = NULL)
}
\arguments{
\item{LoadBalancerArn}{[required] The Amazon Resource Name (ARN) of the load balancer.}

\item{Subnets}{The IDs of the public subnets. You must specify subnets from at least two Availability Zones. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings.}

\item{SubnetMappings}{The IDs of the public subnets. You must specify subnets from at least two Availability Zones. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings.

You cannot specify Elastic IP addresses for your subnets.}
}
\description{
Enables the Availability Zone for the specified public subnets for the specified Application Load Balancer. The specified subnets replace the previously enabled subnets.
}
\details{
You can't change the subnets for a Network Load Balancer.
}
\section{Accepted Parameters}{
\preformatted{set_subnets(
  LoadBalancerArn = "string",
  Subnets = list(
    "string"
  ),
  SubnetMappings = list(
    list(
      SubnetId = "string",
      AllocationId = "string"
    )
  )
)
}
}

\examples{
# This example enables the Availability Zones for the specified subnets
# for the specified load balancer.
\donttest{set_subnets(
  LoadBalancerArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
  Subnets = list(
    "subnet-8360a9e7",
    "subnet-b7d581c0"
  )
)}

}
