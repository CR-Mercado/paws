% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iot1clickprojects_operations.R
\name{update_project}
\alias{update_project}
\title{Updates a project associated with your AWS account and region}
\usage{
update_project(projectName, description = NULL,
  placementTemplate = NULL)
}
\arguments{
\item{projectName}{[required] The name of the project to be updated.}

\item{description}{An optional user-defined description for the project.}

\item{placementTemplate}{An object defining the project update. Once a project has been created, you cannot add device template names to the project. However, for a given \code{placementTemplate}, you can update the associated \code{callbackOverrides} for the device definition using this API.}
}
\description{
Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., \code{""}).
}
\section{Accepted Parameters}{
\preformatted{update_project(
  projectName = "string",
  description = "string",
  placementTemplate = list(
    defaultAttributes = list(
      "string"
    ),
    deviceTemplates = list(
      list(
        deviceType = "string",
        callbackOverrides = list(
          "string"
        )
      )
    )
  )
)
}
}

