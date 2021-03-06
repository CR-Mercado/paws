% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.glue_operations.R
\name{create_database}
\alias{create_database}
\title{Creates a new database in a Data Catalog}
\usage{
create_database(CatalogId = NULL, DatabaseInput)
}
\arguments{
\item{CatalogId}{The ID of the Data Catalog in which to create the database. If none is supplied, the AWS account ID is used by default.}

\item{DatabaseInput}{[required] A \code{DatabaseInput} object defining the metadata database to create in the catalog.}
}
\description{
Creates a new database in a Data Catalog.
}
\section{Accepted Parameters}{
\preformatted{create_database(
  CatalogId = "string",
  DatabaseInput = list(
    Name = "string",
    Description = "string",
    LocationUri = "string",
    Parameters = list(
      "string"
    )
  )
)
}
}

