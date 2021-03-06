% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ecr_operations.R
\name{start_lifecycle_policy_preview}
\alias{start_lifecycle_policy_preview}
\title{Starts a preview of the specified lifecycle policy}
\usage{
start_lifecycle_policy_preview(registryId = NULL, repositoryName,
  lifecyclePolicyText = NULL)
}
\arguments{
\item{registryId}{The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.}

\item{repositoryName}{[required] The name of the repository to be evaluated.}

\item{lifecyclePolicyText}{The policy to be evaluated against. If you do not specify a policy, the current policy for the repository is used.}
}
\description{
Starts a preview of the specified lifecycle policy. This allows you to see the results before creating the lifecycle policy.
}
\section{Accepted Parameters}{
\preformatted{start_lifecycle_policy_preview(
  registryId = "string",
  repositoryName = "string",
  lifecyclePolicyText = "string"
)
}
}

