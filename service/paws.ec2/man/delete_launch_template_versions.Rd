% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{delete_launch_template_versions}
\alias{delete_launch_template_versions}
\title{Deletes one or more versions of a launch template}
\usage{
delete_launch_template_versions(DryRun = NULL, LaunchTemplateId = NULL,
  LaunchTemplateName = NULL, Versions)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{LaunchTemplateId}{The ID of the launch template. You must specify either the launch template ID or launch template name in the request.}

\item{LaunchTemplateName}{The name of the launch template. You must specify either the launch template ID or launch template name in the request.}

\item{Versions}{[required] The version numbers of one or more launch template versions to delete.}
}
\description{
Deletes one or more versions of a launch template. You cannot delete the default version of a launch template; you must first assign a different version as the default. If the default version is the only version for the launch template, you must delete the entire launch template using DeleteLaunchTemplate.
}
\section{Accepted Parameters}{
\preformatted{delete_launch_template_versions(
  DryRun = TRUE|FALSE,
  LaunchTemplateId = "string",
  LaunchTemplateName = "string",
  Versions = list(
    "string"
  )
)
}
}

\examples{
# This example deletes the specified launch template version.
\donttest{delete_launch_template_versions(
  LaunchTemplateId = "lt-0abcd290751193123",
  Versions = list(
    "1"
  )
)}

}
