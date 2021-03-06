% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.elbv2_operations.R
\name{delete_listener}
\alias{delete_listener}
\title{Deletes the specified listener}
\usage{
delete_listener(ListenerArn)
}
\arguments{
\item{ListenerArn}{[required] The Amazon Resource Name (ARN) of the listener.}
}
\description{
Deletes the specified listener.
}
\details{
Alternatively, your listener is deleted when you delete the load balancer to which it is attached, using DeleteLoadBalancer.
}
\section{Accepted Parameters}{
\preformatted{delete_listener(
  ListenerArn = "string"
)
}
}

\examples{
# This example deletes the specified listener.
\donttest{delete_listener(
  ListenerArn = "arn:aws:elasticloadbalancing:ua-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2"
)}

}
