% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.neptune_operations.R
\name{apply_pending_maintenance_action}
\alias{apply_pending_maintenance_action}
\title{Applies a pending maintenance action to a resource (for example, to a DB instance)}
\usage{
apply_pending_maintenance_action(ResourceIdentifier, ApplyAction,
  OptInType)
}
\arguments{
\item{ResourceIdentifier}{[required] The Amazon Resource Name (ARN) of the resource that the pending maintenance action applies to. For information about creating an ARN, see \href{http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing}{Constructing an Amazon Resource Name (ARN)}.}

\item{ApplyAction}{[required] The pending maintenance action to apply to this resource.

Valid values: \code{system-update}, \code{db-upgrade}}

\item{OptInType}{[required] A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in request of type \code{immediate} can't be undone.

Valid values:
\itemize{
\item \code{immediate} - Apply the maintenance action immediately.
\item \code{next-maintenance} - Apply the maintenance action during the next maintenance window for the resource.
\item \code{undo-opt-in} - Cancel any existing \code{next-maintenance} opt-in requests.
}}
}
\description{
Applies a pending maintenance action to a resource (for example, to a DB instance).
}
\section{Accepted Parameters}{
\preformatted{apply_pending_maintenance_action(
  ResourceIdentifier = "string",
  ApplyAction = "string",
  OptInType = "string"
)
}
}

