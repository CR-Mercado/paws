% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.elb_operations.R
\name{detach_load_balancer_from_subnets}
\alias{detach_load_balancer_from_subnets}
\title{Removes the specified subnets from the set of configured subnets for the load balancer}
\usage{
detach_load_balancer_from_subnets(LoadBalancerName, Subnets)
}
\arguments{
\item{LoadBalancerName}{[required] The name of the load balancer.}

\item{Subnets}{[required] The IDs of the subnets.}
}
\description{
Removes the specified subnets from the set of configured subnets for the load balancer.
}
\details{
After a subnet is removed, all EC2 instances registered with the load balancer in the removed subnet go into the \code{OutOfService} state. Then, the load balancer balances the traffic among the remaining routable subnets.
}
\section{Accepted Parameters}{
\preformatted{detach_load_balancer_from_subnets(
  LoadBalancerName = "string",
  Subnets = list(
    "string"
  )
)
}
}

\examples{
# This example detaches the specified load balancer from the specified
# subnet.
\donttest{detach_load_balancer_from_subnets(
  LoadBalancerName = "my-load-balancer",
  Subnets = list(
    "subnet-0ecac448"
  )
)}

}
