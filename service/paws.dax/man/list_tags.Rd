% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.dax_operations.R
\name{list_tags}
\alias{list_tags}
\title{List all of the tags for a DAX cluster}
\usage{
list_tags(ResourceName, NextToken = NULL)
}
\arguments{
\item{ResourceName}{[required] The name of the DAX resource to which the tags belong.}

\item{NextToken}{An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token.}
}
\description{
List all of the tags for a DAX cluster. You can call \code{ListTags} up to 10 times per second, per account.
}
\section{Accepted Parameters}{
\preformatted{list_tags(
  ResourceName = "string",
  NextToken = "string"
)
}
}

