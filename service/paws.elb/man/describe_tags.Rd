% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.elb_operations.R
\name{describe_tags}
\alias{describe_tags}
\title{Describes the tags associated with the specified load balancers}
\usage{
describe_tags(LoadBalancerNames)
}
\arguments{
\item{LoadBalancerNames}{[required] The names of the load balancers.}
}
\description{
Describes the tags associated with the specified load balancers.
}
\section{Accepted Parameters}{
\preformatted{describe_tags(
  LoadBalancerNames = list(
    "string"
  )
)
}
}

\examples{
# This example describes the tags for the specified load balancer.
\donttest{describe_tags(
  LoadBalancerNames = list(
    "my-load-balancer"
  )
)}

}
