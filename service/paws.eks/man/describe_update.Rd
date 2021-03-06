% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.eks_operations.R
\name{describe_update}
\alias{describe_update}
\title{Returns descriptive information about an update against your Amazon EKS cluster}
\usage{
describe_update(name, updateId)
}
\arguments{
\item{name}{[required] The name of the Amazon EKS cluster to update.}

\item{updateId}{[required] The ID of the update to describe.}
}
\description{
Returns descriptive information about an update against your Amazon EKS cluster.
}
\details{
When the status of the update is \code{Succeeded}, the update is complete. If an update fails, the status is \code{Failed}, and an error detail explains the reason for the failure.
}
\section{Accepted Parameters}{
\preformatted{describe_update(
  name = "string",
  updateId = "string"
)
}
}

