% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.greengrass_operations.R
\name{reset_deployments}
\alias{reset_deployments}
\title{Resets a group's deployments}
\usage{
reset_deployments(AmznClientToken = NULL, Force = NULL, GroupId)
}
\arguments{
\item{AmznClientToken}{A client token used to correlate requests and responses.}

\item{Force}{If true, performs a best-effort only core reset.}

\item{GroupId}{[required] The ID of the Greengrass group.}
}
\description{
Resets a group's deployments.
}
\section{Accepted Parameters}{
\preformatted{reset_deployments(
  AmznClientToken = "string",
  Force = TRUE|FALSE,
  GroupId = "string"
)
}
}

