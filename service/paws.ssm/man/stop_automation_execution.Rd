% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ssm_operations.R
\name{stop_automation_execution}
\alias{stop_automation_execution}
\title{Stop an Automation that is currently executing}
\usage{
stop_automation_execution(AutomationExecutionId, Type = NULL)
}
\arguments{
\item{AutomationExecutionId}{[required] The execution ID of the Automation to stop.}

\item{Type}{The stop request type. Valid types include the following: Cancel and Complete. The default type is Cancel.}
}
\description{
Stop an Automation that is currently executing.
}
\section{Accepted Parameters}{
\preformatted{stop_automation_execution(
  AutomationExecutionId = "string",
  Type = "Complete"|"Cancel"
)
}
}

