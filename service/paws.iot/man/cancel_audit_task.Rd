% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iot_operations.R
\name{cancel_audit_task}
\alias{cancel_audit_task}
\title{Cancels an audit that is in progress}
\usage{
cancel_audit_task(taskId)
}
\arguments{
\item{taskId}{[required] The ID of the audit you want to cancel. You can only cancel an audit that is "IN\_PROGRESS".}
}
\description{
Cancels an audit that is in progress. The audit can be either scheduled or on-demand. If the audit is not in progress, an "InvalidRequestException" occurs.
}
\section{Accepted Parameters}{
\preformatted{cancel_audit_task(
  taskId = "string"
)
}
}

