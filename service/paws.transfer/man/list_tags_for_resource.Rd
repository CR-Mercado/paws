% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.transfer_operations.R
\name{list_tags_for_resource}
\alias{list_tags_for_resource}
\title{Lists all of the tags associated with the Amazon Resource Number (ARN) you specify}
\usage{
list_tags_for_resource(Arn, MaxResults = NULL, NextToken = NULL)
}
\arguments{
\item{Arn}{[required] Requests the tags associated with a particular Amazon Resource Name (ARN). An ARN is an identifier for a specific AWS resource, such as a server, user, or role.}

\item{MaxResults}{}

\item{NextToken}{}
}
\description{
Lists all of the tags associated with the Amazon Resource Number (ARN) you specify. The resource can be a user, server, or role.
}
\section{Accepted Parameters}{
\preformatted{list_tags_for_resource(
  Arn = "string",
  MaxResults = 123,
  NextToken = "string"
)
}
}

