% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{describe_scheduled_instances}
\alias{describe_scheduled_instances}
\title{Describes one or more of your Scheduled Instances}
\usage{
describe_scheduled_instances(DryRun = NULL, Filters = NULL,
  MaxResults = NULL, NextToken = NULL, ScheduledInstanceIds = NULL,
  SlotStartTimeRange = NULL)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{Filters}{One or more filters.
\itemize{
\item \code{availability-zone} - The Availability Zone (for example, \code{us-west-2a}).
\item \code{instance-type} - The instance type (for example, \code{c4.large}).
\item \code{network-platform} - The network platform (\code{EC2-Classic} or \code{EC2-VPC}).
\item \code{platform} - The platform (\code{Linux/UNIX} or \code{Windows}).
}}

\item{MaxResults}{The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 100. To retrieve the remaining results, make another call with the returned \code{NextToken} value.}

\item{NextToken}{The token for the next set of results.}

\item{ScheduledInstanceIds}{One or more Scheduled Instance IDs.}

\item{SlotStartTimeRange}{The time period for the first schedule to start.}
}
\description{
Describes one or more of your Scheduled Instances.
}
\section{Accepted Parameters}{
\preformatted{describe_scheduled_instances(
  DryRun = TRUE|FALSE,
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  ),
  MaxResults = 123,
  NextToken = "string",
  ScheduledInstanceIds = list(
    "string"
  ),
  SlotStartTimeRange = list(
    EarliestTime = as.POSIXct("2015-01-01"),
    LatestTime = as.POSIXct("2015-01-01")
  )
)
}
}

\examples{
# This example describes the specified Scheduled Instance.
\donttest{describe_scheduled_instances(
  ScheduledInstanceIds = list(
    "sci-1234-1234-1234-1234-123456789012"
  )
)}

}
