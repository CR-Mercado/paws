% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.kinesis_operations.R
\name{add_tags_to_stream}
\alias{add_tags_to_stream}
\title{Adds or updates tags for the specified Kinesis data stream}
\usage{
add_tags_to_stream(StreamName, Tags)
}
\arguments{
\item{StreamName}{[required] The name of the stream.}

\item{Tags}{[required] A set of up to 10 key-value pairs to use to create the tags.}
}
\description{
Adds or updates tags for the specified Kinesis data stream. Each time you invoke this operation, you can specify up to 10 tags. If you want to add more than 10 tags to your stream, you can invoke this operation multiple times. In total, each stream can have up to 50 tags.
}
\details{
If tags have already been assigned to the stream, \code{AddTagsToStream} overwrites any existing tags that correspond to the specified tag keys.

AddTagsToStream has a limit of five transactions per second per account.
}
\section{Accepted Parameters}{
\preformatted{add_tags_to_stream(
  StreamName = "string",
  Tags = list(
    "string"
  )
)
}
}

