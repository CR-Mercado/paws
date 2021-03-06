% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.directoryservice_operations.R
\name{cancel_schema_extension}
\alias{cancel_schema_extension}
\title{Cancels an in-progress schema extension to a Microsoft AD directory}
\usage{
cancel_schema_extension(DirectoryId, SchemaExtensionId)
}
\arguments{
\item{DirectoryId}{[required] The identifier of the directory whose schema extension will be canceled.}

\item{SchemaExtensionId}{[required] The identifier of the schema extension that will be canceled.}
}
\description{
Cancels an in-progress schema extension to a Microsoft AD directory. Once a schema extension has started replicating to all domain controllers, the task can no longer be canceled. A schema extension can be canceled during any of the following states; \code{Initializing}, \code{CreatingSnapshot}, and \code{UpdatingSchema}.
}
\section{Accepted Parameters}{
\preformatted{cancel_schema_extension(
  DirectoryId = "string",
  SchemaExtensionId = "string"
)
}
}

