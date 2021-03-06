% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{describe_spot_datafeed_subscription}
\alias{describe_spot_datafeed_subscription}
\title{Describes the data feed for Spot Instances}
\usage{
describe_spot_datafeed_subscription(DryRun = NULL)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Describes the data feed for Spot Instances. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html}{Spot Instance Data Feed} in the \emph{Amazon EC2 User Guide for Linux Instances}.
}
\section{Accepted Parameters}{
\preformatted{describe_spot_datafeed_subscription(
  DryRun = TRUE|FALSE
)
}
}

\examples{
# This example describes the Spot Instance datafeed subscription for your
# AWS account.
\donttest{describe_spot_datafeed_subscription()}

}
