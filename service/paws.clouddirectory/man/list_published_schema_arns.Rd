% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.clouddirectory_operations.R
\name{list_published_schema_arns}
\alias{list_published_schema_arns}
\title{Lists the major version families of each published schema}
\usage{
list_published_schema_arns(SchemaArn = NULL, NextToken = NULL,
  MaxResults = NULL)
}
\arguments{
\item{SchemaArn}{The response for \code{ListPublishedSchemaArns} when this parameter is used will list all minor version ARNs for a major version.}

\item{NextToken}{The pagination token.}

\item{MaxResults}{The maximum number of results to retrieve.}
}
\description{
Lists the major version families of each published schema. If a major version ARN is provided as \code{SchemaArn}, the minor version revisions in that family are listed instead.
}
\section{Accepted Parameters}{
\preformatted{list_published_schema_arns(
  SchemaArn = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

