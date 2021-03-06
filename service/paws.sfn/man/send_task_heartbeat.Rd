% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.sfn_operations.R
\name{send_task_heartbeat}
\alias{send_task_heartbeat}
\title{Used by workers to report to the service that the task represented by the specified taskToken is still making progress}
\usage{
send_task_heartbeat(taskToken)
}
\arguments{
\item{taskToken}{[required] The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see GetActivityTaskOutput\$taskToken).}
}
\description{
Used by workers to report to the service that the task represented by the specified \code{taskToken} is still making progress. This action resets the \code{Heartbeat} clock. The \code{Heartbeat} threshold is specified in the state machine's Amazon States Language definition. This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an \code{ActivityTimedOut} event.
}
\details{
The \code{Timeout} of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of SendTaskHeartbeat requests received.

This operation is only useful for long-lived tasks to report the liveliness of the task.
}
\section{Accepted Parameters}{
\preformatted{send_task_heartbeat(
  taskToken = "string"
)
}
}

