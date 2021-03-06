% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ssm_operations.R
\name{describe_association_executions}
\alias{describe_association_executions}
\title{Use this API action to view all executions for a specific association ID}
\usage{
describe_association_executions(AssociationId, Filters = NULL,
  MaxResults = NULL, NextToken = NULL)
}
\arguments{
\item{AssociationId}{[required] The association ID for which you want to view execution history details.}

\item{Filters}{Filters for the request. You can specify the following filters and values.

ExecutionId (EQUAL)

Status (EQUAL)

CreatedTime (EQUAL, GREATER\_THAN, LESS\_THAN)}

\item{MaxResults}{The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.}

\item{NextToken}{A token to start the list. Use this token to get the next set of results.}
}
\description{
Use this API action to view all executions for a specific association ID.
}
\section{Accepted Parameters}{
\preformatted{describe_association_executions(
  AssociationId = "string",
  Filters = list(
    list(
      Key = "ExecutionId"|"Status"|"CreatedTime",
      Value = "string",
      Type = "EQUAL"|"LESS_THAN"|"GREATER_THAN"
    )
  ),
  MaxResults = 123,
  NextToken = "string"
)
}
}

