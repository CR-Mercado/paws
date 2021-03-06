% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.autoscaling_operations.R
\name{complete_lifecycle_action}
\alias{complete_lifecycle_action}
\title{Completes the lifecycle action for the specified token or instance with the specified result}
\usage{
complete_lifecycle_action(LifecycleHookName, AutoScalingGroupName,
  LifecycleActionToken = NULL, LifecycleActionResult,
  InstanceId = NULL)
}
\arguments{
\item{LifecycleHookName}{[required] The name of the lifecycle hook.}

\item{AutoScalingGroupName}{[required] The name of the Auto Scaling group.}

\item{LifecycleActionToken}{A universally unique identifier (UUID) that identifies a specific lifecycle action associated with an instance. Amazon EC2 Auto Scaling sends this token to the notification target you specified when you created the lifecycle hook.}

\item{LifecycleActionResult}{[required] The action for the group to take. This parameter can be either \code{CONTINUE} or \code{ABANDON}.}

\item{InstanceId}{The ID of the instance.}
}
\description{
Completes the lifecycle action for the specified token or instance with the specified result.
}
\details{
This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:
\enumerate{
\item (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.
\item (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.
\item Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.
\item If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.
\item \strong{If you finish before the timeout period ends, complete the lifecycle action.}
}

For more information, see \href{http://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html}{Auto Scaling Lifecycle} in the \emph{Amazon EC2 Auto Scaling User Guide}.
}
\section{Accepted Parameters}{
\preformatted{complete_lifecycle_action(
  LifecycleHookName = "string",
  AutoScalingGroupName = "string",
  LifecycleActionToken = "string",
  LifecycleActionResult = "string",
  InstanceId = "string"
)
}
}

\examples{
# This example notifies Auto Scaling that the specified lifecycle action
# is complete so that it can finish launching or terminating the instance.
\donttest{complete_lifecycle_action(
  AutoScalingGroupName = "my-auto-scaling-group",
  LifecycleActionResult = "CONTINUE",
  LifecycleActionToken = "bcd2f1b8-9a78-44d3-8a7a-4dd07d7cf635",
  LifecycleHookName = "my-lifecycle-hook"
)}

}
