% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.greengrass_operations.R
\name{list_device_definition_versions}
\alias{list_device_definition_versions}
\title{Lists the versions of a device definition}
\usage{
list_device_definition_versions(DeviceDefinitionId, MaxResults = NULL,
  NextToken = NULL)
}
\arguments{
\item{DeviceDefinitionId}{[required] The ID of the device definition.}

\item{MaxResults}{The maximum number of results to be returned per request.}

\item{NextToken}{The token for the next set of results, or ''null'' if there are no additional results.}
}
\description{
Lists the versions of a device definition.
}
\section{Accepted Parameters}{
\preformatted{list_device_definition_versions(
  DeviceDefinitionId = "string",
  MaxResults = "string",
  NextToken = "string"
)
}
}

