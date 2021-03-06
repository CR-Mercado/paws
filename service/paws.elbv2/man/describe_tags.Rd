% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.elbv2_operations.R
\name{describe_tags}
\alias{describe_tags}
\title{Describes the tags for the specified resources}
\usage{
describe_tags(ResourceArns)
}
\arguments{
\item{ResourceArns}{[required] The Amazon Resource Names (ARN) of the resources.}
}
\description{
Describes the tags for the specified resources. You can describe the tags for one or more Application Load Balancers, Network Load Balancers, and target groups.
}
\section{Accepted Parameters}{
\preformatted{describe_tags(
  ResourceArns = list(
    "string"
  )
)
}
}

\examples{
# This example describes the tags assigned to the specified load balancer.
\donttest{describe_tags(
  ResourceArns = list(
    "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
  )
)}

}
