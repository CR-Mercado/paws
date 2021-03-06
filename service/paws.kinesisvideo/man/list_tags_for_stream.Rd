% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.kinesisvideo_operations.R
\name{list_tags_for_stream}
\alias{list_tags_for_stream}
\title{Returns a list of tags associated with the specified stream}
\usage{
list_tags_for_stream(NextToken = NULL, StreamARN = NULL,
  StreamName = NULL)
}
\arguments{
\item{NextToken}{If you specify this parameter and the result of a \code{ListTagsForStream} call is truncated, the response includes a token that you can use in the next request to fetch the next batch of tags.}

\item{StreamARN}{The Amazon Resource Name (ARN) of the stream that you want to list tags for.}

\item{StreamName}{The name of the stream that you want to list tags for.}
}
\description{
Returns a list of tags associated with the specified stream.
}
\details{
In the request, you must specify either the \code{StreamName} or the \code{StreamARN}.
}
\section{Accepted Parameters}{
\preformatted{list_tags_for_stream(
  NextToken = "string",
  StreamARN = "string",
  StreamName = "string"
)
}
}

