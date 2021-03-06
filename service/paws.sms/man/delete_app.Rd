% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.sms_operations.R
\name{delete_app}
\alias{delete_app}
\title{Deletes an existing application}
\usage{
delete_app(appId = NULL, forceStopAppReplication = NULL,
  forceTerminateApp = NULL)
}
\arguments{
\item{appId}{ID of the application to delete.}

\item{forceStopAppReplication}{While deleting the application, stop all replication jobs corresponding to the servers in the application.}

\item{forceTerminateApp}{While deleting the application, terminate the stack corresponding to the application.}
}
\description{
Deletes an existing application. Optionally deletes the launched stack associated with the application and all AWS SMS replication jobs for servers in the application.
}
\section{Accepted Parameters}{
\preformatted{delete_app(
  appId = "string",
  forceStopAppReplication = TRUE|FALSE,
  forceTerminateApp = TRUE|FALSE
)
}
}

