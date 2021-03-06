% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lightsail_operations.R
\name{get_operations_for_resource}
\alias{get_operations_for_resource}
\title{Gets operations for a specific resource (e}
\usage{
get_operations_for_resource(resourceName, pageToken = NULL)
}
\arguments{
\item{resourceName}{[required] The name of the resource for which you are requesting information.}

\item{pageToken}{A token used for advancing to the next page of results from your get operations for resource request.}
}
\description{
Gets operations for a specific resource (e.g., an instance or a static IP).
}
\section{Accepted Parameters}{
\preformatted{get_operations_for_resource(
  resourceName = "string",
  pageToken = "string"
)
}
}

