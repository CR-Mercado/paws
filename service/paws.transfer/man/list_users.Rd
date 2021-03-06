% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.transfer_operations.R
\name{list_users}
\alias{list_users}
\title{Lists the users for the server that you specify by passing the ServerId parameter}
\usage{
list_users(MaxResults = NULL, NextToken = NULL, ServerId)
}
\arguments{
\item{MaxResults}{Specifies the number of users to return as a response to the \code{ListUsers} request.}

\item{NextToken}{When you can get additional results from the \code{ListUsers}ListUsers call, a \code{NextToken} parameter is returned in the output. You can then pass in a subsequent command the \code{NextToken} parameter to continue listing additional users.}

\item{ServerId}{[required] A system-assigned unique identifier for a Secure File Transfer Protocol (SFTP) server that has users are assigned to it.}
}
\description{
Lists the users for the server that you specify by passing the \code{ServerId} parameter.
}
\section{Accepted Parameters}{
\preformatted{list_users(
  MaxResults = 123,
  NextToken = "string",
  ServerId = "string"
)
}
}

