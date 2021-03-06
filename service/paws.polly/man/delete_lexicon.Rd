% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.polly_operations.R
\name{delete_lexicon}
\alias{delete_lexicon}
\title{Deletes the specified pronunciation lexicon stored in an AWS Region}
\usage{
delete_lexicon(Name)
}
\arguments{
\item{Name}{[required] The name of the lexicon to delete. Must be an existing lexicon in the region.}
}
\description{
Deletes the specified pronunciation lexicon stored in an AWS Region. A lexicon which has been deleted is not available for speech synthesis, nor is it possible to retrieve it using either the \code{GetLexicon} or \code{ListLexicon} APIs.
}
\details{
For more information, see \href{http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html}{Managing Lexicons}.
}
\section{Accepted Parameters}{
\preformatted{delete_lexicon(
  Name = "string"
)
}
}

\examples{
# Deletes a specified pronunciation lexicon stored in an AWS Region.
\donttest{delete_lexicon(
  Name = "example"
)}

}
