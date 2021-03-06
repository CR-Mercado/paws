% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{get_console_screenshot}
\alias{get_console_screenshot}
\title{Retrieve a JPG-format screenshot of a running instance to help with troubleshooting}
\usage{
get_console_screenshot(DryRun = NULL, InstanceId, WakeUp = NULL)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{InstanceId}{[required] The ID of the instance.}

\item{WakeUp}{When set to \code{true}, acts as keystroke input and wakes up an instance that's in standby or "sleep" mode.}
}
\description{
Retrieve a JPG-format screenshot of a running instance to help with troubleshooting.
}
\details{
The returned content is Base64-encoded.
}
\section{Accepted Parameters}{
\preformatted{get_console_screenshot(
  DryRun = TRUE|FALSE,
  InstanceId = "string",
  WakeUp = TRUE|FALSE
)
}
}

