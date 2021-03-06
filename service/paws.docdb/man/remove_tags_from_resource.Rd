% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.docdb_operations.R
\name{remove_tags_from_resource}
\alias{remove_tags_from_resource}
\title{Removes metadata tags from an Amazon DocumentDB resource}
\usage{
remove_tags_from_resource(ResourceName, TagKeys)
}
\arguments{
\item{ResourceName}{[required] The Amazon DocumentDB resource that the tags are removed from. This value is an Amazon Resource Name (ARN).}

\item{TagKeys}{[required] The tag key (name) of the tag to be removed.}
}
\description{
Removes metadata tags from an Amazon DocumentDB resource.
}
\section{Accepted Parameters}{
\preformatted{remove_tags_from_resource(
  ResourceName = "string",
  TagKeys = list(
    "string"
  )
)
}
}

