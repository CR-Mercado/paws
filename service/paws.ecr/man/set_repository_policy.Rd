% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ecr_operations.R
\name{set_repository_policy}
\alias{set_repository_policy}
\title{Applies a repository policy on a specified repository to control access permissions}
\usage{
set_repository_policy(registryId = NULL, repositoryName, policyText,
  force = NULL)
}
\arguments{
\item{registryId}{The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.}

\item{repositoryName}{[required] The name of the repository to receive the policy.}

\item{policyText}{[required] The JSON repository policy text to apply to the repository.}

\item{force}{If the policy you are attempting to set on a repository policy would prevent you from setting another policy in the future, you must force the SetRepositoryPolicy operation. This is intended to prevent accidental repository lock outs.}
}
\description{
Applies a repository policy on a specified repository to control access permissions.
}
\section{Accepted Parameters}{
\preformatted{set_repository_policy(
  registryId = "string",
  repositoryName = "string",
  policyText = "string",
  force = TRUE|FALSE
)
}
}

