% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.apigateway_operations.R
\name{update_deployment}
\alias{update_deployment}
\title{Changes information about a Deployment resource}
\usage{
update_deployment(restApiId, deploymentId, patchOperations = NULL)
}
\arguments{
\item{restApiId}{[required] [Required] The string identifier of the associated RestApi.}

\item{deploymentId}{[required] The replacement identifier for the Deployment resource to change information about.}

\item{patchOperations}{A list of update operations to be applied to the specified resource and in the order specified in this list.}
}
\description{
Changes information about a Deployment resource.
}
\section{Accepted Parameters}{
\preformatted{update_deployment(
  restApiId = "string",
  deploymentId = "string",
  patchOperations = list(
    list(
      op = "add"|"remove"|"replace"|"move"|"copy"|"test",
      path = "string",
      value = "string",
      from = "string"
    )
  )
)
}
}

