% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.rekognition_operations.R
\name{start_stream_processor}
\alias{start_stream_processor}
\title{Starts processing a stream processor}
\usage{
start_stream_processor(Name)
}
\arguments{
\item{Name}{[required] The name of the stream processor to start processing.}
}
\description{
Starts processing a stream processor. You create a stream processor by calling CreateStreamProcessor. To tell \code{StartStreamProcessor} which stream processor to start, use the value of the \code{Name} field specified in the call to \code{CreateStreamProcessor}.
}
\section{Accepted Parameters}{
\preformatted{start_stream_processor(
  Name = "string"
)
}
}

