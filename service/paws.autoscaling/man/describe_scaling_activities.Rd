% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.autoscaling_operations.R
\name{describe_scaling_activities}
\alias{describe_scaling_activities}
\title{Describes one or more scaling activities for the specified Auto Scaling group}
\usage{
describe_scaling_activities(ActivityIds = NULL,
  AutoScalingGroupName = NULL, MaxRecords = NULL, NextToken = NULL)
}
\arguments{
\item{ActivityIds}{The activity IDs of the desired scaling activities. You can specify up to 50 IDs. If you omit this parameter, all activities for the past six weeks are described. If unknown activities are requested, they are ignored with no error. If you specify an Auto Scaling group, the results are limited to that group.}

\item{AutoScalingGroupName}{The name of the Auto Scaling group.}

\item{MaxRecords}{The maximum number of items to return with this call. The default value is 100 and the maximum value is 100.}

\item{NextToken}{The token for the next set of items to return. (You received this token from a previous call.)}
}
\description{
Describes one or more scaling activities for the specified Auto Scaling group.
}
\section{Accepted Parameters}{
\preformatted{describe_scaling_activities(
  ActivityIds = list(
    "string"
  ),
  AutoScalingGroupName = "string",
  MaxRecords = 123,
  NextToken = "string"
)
}
}

\examples{
# This example describes the scaling activities for the specified Auto
# Scaling group.
\donttest{describe_scaling_activities(
  AutoScalingGroupName = "my-auto-scaling-group"
)}

}
