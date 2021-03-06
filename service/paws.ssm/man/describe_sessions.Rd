% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ssm_operations.R
\name{describe_sessions}
\alias{describe_sessions}
\title{Retrieves a list of all active sessions (both connected and disconnected) or terminated sessions from the past 30 days}
\usage{
describe_sessions(State, MaxResults = NULL, NextToken = NULL,
  Filters = NULL)
}
\arguments{
\item{State}{[required] The session status to retrieve a list of sessions for. For example, "Active".}

\item{MaxResults}{The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.}

\item{NextToken}{The token for the next set of items to return. (You received this token from a previous call.)}

\item{Filters}{One or more filters to limit the type of sessions returned by the request.}
}
\description{
Retrieves a list of all active sessions (both connected and disconnected) or terminated sessions from the past 30 days.
}
\section{Accepted Parameters}{
\preformatted{describe_sessions(
  State = "Active"|"History",
  MaxResults = 123,
  NextToken = "string",
  Filters = list(
    list(
      key = "InvokedAfter"|"InvokedBefore"|"Target"|"Owner"|"Status",
      value = "string"
    )
  )
)
}
}

