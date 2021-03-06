% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.workmail_operations.R
\name{list_users}
\alias{list_users}
\title{Returns summaries of the organization's users}
\usage{
list_users(OrganizationId, NextToken = NULL, MaxResults = NULL)
}
\arguments{
\item{OrganizationId}{[required] The identifier for the organization under which the users exist.}

\item{NextToken}{TBD}

\item{MaxResults}{The maximum number of results to return in a single call.}
}
\description{
Returns summaries of the organization's users.
}
\section{Accepted Parameters}{
\preformatted{list_users(
  OrganizationId = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

