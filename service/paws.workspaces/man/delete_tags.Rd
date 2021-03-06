% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.workspaces_operations.R
\name{delete_tags}
\alias{delete_tags}
\title{Deletes the specified tags from the specified WorkSpace}
\usage{
delete_tags(ResourceId, TagKeys)
}
\arguments{
\item{ResourceId}{[required] The identifier of the WorkSpace. To find this ID, use DescribeWorkspaces.}

\item{TagKeys}{[required] The tag keys.}
}
\description{
Deletes the specified tags from the specified WorkSpace.
}
\section{Accepted Parameters}{
\preformatted{delete_tags(
  ResourceId = "string",
  TagKeys = list(
    "string"
  )
)
}
}

