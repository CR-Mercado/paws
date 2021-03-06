% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.directoryservice_operations.R
\name{update_radius}
\alias{update_radius}
\title{Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory}
\usage{
update_radius(DirectoryId, RadiusSettings)
}
\arguments{
\item{DirectoryId}{[required] The identifier of the directory for which to update the RADIUS server information.}

\item{RadiusSettings}{[required] A RadiusSettings object that contains information about the RADIUS server.}
}
\description{
Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory.
}
\section{Accepted Parameters}{
\preformatted{update_radius(
  DirectoryId = "string",
  RadiusSettings = list(
    RadiusServers = list(
      "string"
    ),
    RadiusPort = 123,
    RadiusTimeout = 123,
    RadiusRetries = 123,
    SharedSecret = "string",
    AuthenticationProtocol = "PAP"|"CHAP"|"MS-CHAPv1"|"MS-CHAPv2",
    DisplayLabel = "string",
    UseSameUsername = TRUE|FALSE
  )
)
}
}

