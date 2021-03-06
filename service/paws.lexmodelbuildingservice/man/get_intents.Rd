% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lexmodelbuildingservice_operations.R
\name{get_intents}
\alias{get_intents}
\title{Returns intent information as follows:}
\usage{
get_intents(nextToken = NULL, maxResults = NULL, nameContains = NULL)
}
\arguments{
\item{nextToken}{A pagination token that fetches the next page of intents. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, specify the pagination token in the next request.}

\item{maxResults}{The maximum number of intents to return in the response. The default is 10.}

\item{nameContains}{Substring to match in intent names. An intent will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."}
}
\description{
Returns intent information as follows:
}
\details{
\itemize{
\item If you specify the \code{nameContains} field, returns the \code{$LATEST} version of all intents that contain the specified string.
\item If you don't specify the \code{nameContains} field, returns information about the \code{$LATEST} version of all intents.
}

The operation requires permission for the \code{lex:GetIntents} action.
}
\section{Accepted Parameters}{
\preformatted{get_intents(
  nextToken = "string",
  maxResults = 123,
  nameContains = "string"
)
}
}

\examples{
# This example shows how to get a list of all of the intents in your
# account.
\donttest{get_intents(
  maxResults = 10L,
  nextToken = ""
)}

}
