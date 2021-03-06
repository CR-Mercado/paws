% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.pinpoint_operations.R
\name{put_event_stream}
\alias{put_event_stream}
\title{Use to create or update the event stream for an app}
\usage{
put_event_stream(ApplicationId, WriteEventStream)
}
\arguments{
\item{ApplicationId}{[required] The unique ID of your Amazon Pinpoint application.}

\item{WriteEventStream}{[required]}
}
\description{
Use to create or update the event stream for an app.
}
\section{Accepted Parameters}{
\preformatted{put_event_stream(
  ApplicationId = "string",
  WriteEventStream = list(
    DestinationStreamArn = "string",
    RoleArn = "string"
  )
)
}
}

