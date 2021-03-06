% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.dynamodb_operations.R
\name{list_tables}
\alias{list_tables}
\title{Returns an array of table names associated with the current account and endpoint}
\usage{
list_tables(ExclusiveStartTableName = NULL, Limit = NULL)
}
\arguments{
\item{ExclusiveStartTableName}{The first table name that this operation will evaluate. Use the value that was returned for \code{LastEvaluatedTableName} in a previous operation, so that you can obtain the next page of results.}

\item{Limit}{A maximum number of table names to return. If this parameter is not specified, the limit is 100.}
}
\description{
Returns an array of table names associated with the current account and endpoint. The output from \code{ListTables} is paginated, with each page returning a maximum of 100 table names.
}
\section{Accepted Parameters}{
\preformatted{list_tables(
  ExclusiveStartTableName = "string",
  Limit = 123
)
}
}

\examples{
# This example lists all of the tables associated with the current AWS
# account and endpoint.
\donttest{list_tables()}

}
