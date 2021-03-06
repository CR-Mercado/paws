% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lexmodelbuildingservice_operations.R
\name{delete_slot_type_version}
\alias{delete_slot_type_version}
\title{Deletes a specific version of a slot type}
\usage{
delete_slot_type_version(name, version)
}
\arguments{
\item{name}{[required] The name of the slot type.}

\item{version}{[required] The version of the slot type to delete. You cannot delete the \code{$LATEST} version of the slot type. To delete the \code{$LATEST} version, use the DeleteSlotType operation.}
}
\description{
Deletes a specific version of a slot type. To delete all versions of a slot type, use the DeleteSlotType operation.
}
\details{
This operation requires permissions for the \code{lex:DeleteSlotTypeVersion} action.
}
\section{Accepted Parameters}{
\preformatted{delete_slot_type_version(
  name = "string",
  version = "string"
)
}
}

