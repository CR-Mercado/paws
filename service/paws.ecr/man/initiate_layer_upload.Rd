% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ecr_operations.R
\name{initiate_layer_upload}
\alias{initiate_layer_upload}
\title{Notify Amazon ECR that you intend to upload an image layer}
\usage{
initiate_layer_upload(registryId = NULL, repositoryName)
}
\arguments{
\item{registryId}{The AWS account ID associated with the registry to which you intend to upload layers. If you do not specify a registry, the default registry is assumed.}

\item{repositoryName}{[required] The name of the repository to which you intend to upload layers.}
}
\description{
Notify Amazon ECR that you intend to upload an image layer.
}
\details{
This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the \code{docker} CLI to pull, tag, and push images.
}
\section{Accepted Parameters}{
\preformatted{initiate_layer_upload(
  registryId = "string",
  repositoryName = "string"
)
}
}

