% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudsearchdomain_operations.R
\name{suggest}
\alias{suggest}
\title{Retrieves autocomplete suggestions for a partial query string}
\usage{
suggest(query, suggester, size = NULL)
}
\arguments{
\item{query}{[required] Specifies the string for which you want to get suggestions.}

\item{suggester}{[required] Specifies the name of the suggester to use to find suggested matches.}

\item{size}{Specifies the maximum number of suggestions to return.}
}
\description{
Retrieves autocomplete suggestions for a partial query string. You can use suggestions enable you to display likely matches before users finish typing. In Amazon CloudSearch, suggestions are based on the contents of a particular text field. When you request suggestions, Amazon CloudSearch finds all of the documents whose values in the suggester field start with the specified query string. The beginning of the field must match the query string to be considered a match.
}
\details{
For more information about configuring suggesters and retrieving suggestions, see \href{http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html}{Getting Suggestions} in the \emph{Amazon CloudSearch Developer Guide}.

The endpoint for submitting \code{Suggest} requests is domain-specific. You submit suggest requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service \code{DescribeDomains} action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console.
}
\section{Accepted Parameters}{
\preformatted{suggest(
  query = "string",
  suggester = "string",
  size = 123
)
}
}

