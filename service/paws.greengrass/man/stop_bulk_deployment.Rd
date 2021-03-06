% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.greengrass_operations.R
\name{stop_bulk_deployment}
\alias{stop_bulk_deployment}
\title{Stops the execution of a bulk deployment}
\usage{
stop_bulk_deployment(BulkDeploymentId)
}
\arguments{
\item{BulkDeploymentId}{[required] The ID of the bulk deployment.}
}
\description{
Stops the execution of a bulk deployment. This action returns a status of ''Stopping'' until the deployment is stopped. You cannot start a new bulk deployment while a previous deployment is in the ''Stopping'' state. This action doesn't rollback completed deployments or cancel pending deployments.
}
\section{Accepted Parameters}{
\preformatted{stop_bulk_deployment(
  BulkDeploymentId = "string"
)
}
}

