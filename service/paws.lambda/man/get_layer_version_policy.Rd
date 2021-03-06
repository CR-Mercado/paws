% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lambda_operations.R
\name{get_layer_version_policy}
\alias{get_layer_version_policy}
\title{Returns the permission policy for a version of an AWS Lambda layer}
\usage{
get_layer_version_policy(LayerName, VersionNumber)
}
\arguments{
\item{LayerName}{[required] The name or Amazon Resource Name (ARN) of the layer.}

\item{VersionNumber}{[required] The version number.}
}
\description{
Returns the permission policy for a version of an \href{http://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html}{AWS Lambda layer}. For more information, see AddLayerVersionPermission.
}
\section{Accepted Parameters}{
\preformatted{get_layer_version_policy(
  LayerName = "string",
  VersionNumber = 123
)
}
}

