% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ssm_operations.R
\name{delete_inventory}
\alias{delete_inventory}
\title{Delete a custom inventory type, or the data associated with a custom Inventory type}
\usage{
delete_inventory(TypeName, SchemaDeleteOption = NULL, DryRun = NULL,
  ClientToken = NULL)
}
\arguments{
\item{TypeName}{[required] The name of the custom inventory type for which you want to delete either all previously collected data, or the inventory type itself.}

\item{SchemaDeleteOption}{Use the \code{SchemaDeleteOption} to delete a custom inventory type (schema). If you don't choose this option, the system only deletes existing inventory data associated with the custom inventory type. Choose one of the following options:

DisableSchema: If you choose this option, the system ignores all inventory data for the specified version, and any earlier versions. To enable this schema again, you must call the \code{PutInventory} action for a version greater than the disbled version.

DeleteSchema: This option deletes the specified custom type from the Inventory service. You can recreate the schema later, if you want.}

\item{DryRun}{Use this option to view a summary of the deletion request without deleting any data or the data type. This option is useful when you only want to understand what will be deleted. Once you validate that the data to be deleted is what you intend to delete, you can run the same command without specifying the \code{DryRun} option.}

\item{ClientToken}{User-provided idempotency token.}
}
\description{
Delete a custom inventory type, or the data associated with a custom Inventory type. Deleting a custom inventory type is also referred to as deleting a custom inventory schema.
}
\section{Accepted Parameters}{
\preformatted{delete_inventory(
  TypeName = "string",
  SchemaDeleteOption = "DisableSchema"|"DeleteSchema",
  DryRun = TRUE|FALSE,
  ClientToken = "string"
)
}
}

