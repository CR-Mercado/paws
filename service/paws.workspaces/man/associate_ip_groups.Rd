% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.workspaces_operations.R
\name{associate_ip_groups}
\alias{associate_ip_groups}
\title{Associates the specified IP access control group with the specified directory}
\usage{
associate_ip_groups(DirectoryId, GroupIds)
}
\arguments{
\item{DirectoryId}{[required] The identifier of the directory.}

\item{GroupIds}{[required] The identifiers of one or more IP access control groups.}
}
\description{
Associates the specified IP access control group with the specified directory.
}
\section{Accepted Parameters}{
\preformatted{associate_ip_groups(
  DirectoryId = "string",
  GroupIds = list(
    "string"
  )
)
}
}

