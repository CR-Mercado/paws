% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.kinesisvideo_operations.R
\name{update_stream}
\alias{update_stream}
\title{Updates stream metadata, such as the device name and media type}
\usage{
update_stream(StreamName = NULL, StreamARN = NULL, CurrentVersion,
  DeviceName = NULL, MediaType = NULL)
}
\arguments{
\item{StreamName}{The name of the stream whose metadata you want to update.

The stream name is an identifier for the stream, and must be unique for each account and region.}

\item{StreamARN}{The ARN of the stream whose metadata you want to update.}

\item{CurrentVersion}{[required] The version of the stream whose metadata you want to update.}

\item{DeviceName}{The name of the device that is writing to the stream.

In the current implementation, Kinesis Video Streams does not use this name.}

\item{MediaType}{The stream's media type. Use \code{MediaType} to specify the type of content that the stream contains to the consumers of the stream. For more information about media types, see \href{http://www.iana.org/assignments/media-types/media-types.xhtml}{Media Types}. If you choose to specify the \code{MediaType}, see \href{https://tools.ietf.org/html/rfc6838#section-4.2}{Naming Requirements}.

To play video on the console, you must specify the correct video type. For example, if the video in the stream is H.264, specify \code{video/h264} as the \code{MediaType}.}
}
\description{
Updates stream metadata, such as the device name and media type.
}
\details{
You must provide the stream name or the Amazon Resource Name (ARN) of the stream.

To make sure that you have the latest version of the stream before updating it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the \code{DescribeStream} API.

\code{UpdateStream} is an asynchronous operation, and takes time to complete.
}
\section{Accepted Parameters}{
\preformatted{update_stream(
  StreamName = "string",
  StreamARN = "string",
  CurrentVersion = "string",
  DeviceName = "string",
  MediaType = "string"
)
}
}

