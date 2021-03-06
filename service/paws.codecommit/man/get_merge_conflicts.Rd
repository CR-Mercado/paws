% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.codecommit_operations.R
\name{get_merge_conflicts}
\alias{get_merge_conflicts}
\title{Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository}
\usage{
get_merge_conflicts(repositoryName, destinationCommitSpecifier,
  sourceCommitSpecifier, mergeOption)
}
\arguments{
\item{repositoryName}{[required] The name of the repository where the pull request was created.}

\item{destinationCommitSpecifier}{[required] The branch, tag, HEAD, or other fully qualified reference used to identify a commit. For example, a branch name or a full commit ID.}

\item{sourceCommitSpecifier}{[required] The branch, tag, HEAD, or other fully qualified reference used to identify a commit. For example, a branch name or a full commit ID.}

\item{mergeOption}{[required] The merge option or strategy you want to use to merge the code. The only valid value is FAST\_FORWARD\_MERGE.}
}
\description{
Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.
}
\section{Accepted Parameters}{
\preformatted{get_merge_conflicts(
  repositoryName = "string",
  destinationCommitSpecifier = "string",
  sourceCommitSpecifier = "string",
  mergeOption = "FAST_FORWARD_MERGE"
)
}
}

