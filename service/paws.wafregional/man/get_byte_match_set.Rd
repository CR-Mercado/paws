% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.wafregional_operations.R
\name{get_byte_match_set}
\alias{get_byte_match_set}
\title{Returns the ByteMatchSet specified by ByteMatchSetId}
\usage{
get_byte_match_set(ByteMatchSetId)
}
\arguments{
\item{ByteMatchSetId}{[required] The \code{ByteMatchSetId} of the ByteMatchSet that you want to get. \code{ByteMatchSetId} is returned by CreateByteMatchSet and by ListByteMatchSets.}
}
\description{
Returns the ByteMatchSet specified by \code{ByteMatchSetId}.
}
\section{Accepted Parameters}{
\preformatted{get_byte_match_set(
  ByteMatchSetId = "string"
)
}
}

\examples{
# The following example returns the details of a byte match set with the
# ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
\donttest{get_byte_match_set(
  ByteMatchSetId = "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5"
)}

}
