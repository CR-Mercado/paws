% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.autoscaling_operations.R
\name{batch_put_scheduled_update_group_action}
\alias{batch_put_scheduled_update_group_action}
\title{Creates or updates one or more scheduled scaling actions for an Auto Scaling group}
\usage{
batch_put_scheduled_update_group_action(AutoScalingGroupName,
  ScheduledUpdateGroupActions)
}
\arguments{
\item{AutoScalingGroupName}{[required] The name of the Auto Scaling group.}

\item{ScheduledUpdateGroupActions}{[required] One or more scheduled actions. The maximum number allowed is 50.}
}
\description{
Creates or updates one or more scheduled scaling actions for an Auto Scaling group. If you leave a parameter unspecified when updating a scheduled scaling action, the corresponding value remains unchanged.
}
\section{Accepted Parameters}{
\preformatted{batch_put_scheduled_update_group_action(
  AutoScalingGroupName = "string",
  ScheduledUpdateGroupActions = list(
    list(
      ScheduledActionName = "string",
      StartTime = as.POSIXct("2015-01-01"),
      EndTime = as.POSIXct("2015-01-01"),
      Recurrence = "string",
      MinSize = 123,
      MaxSize = 123,
      DesiredCapacity = 123
    )
  )
)
}
}

