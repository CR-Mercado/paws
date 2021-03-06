% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.alexaforbusiness_operations.R
\name{create_room}
\alias{create_room}
\title{Creates a room with the specified details}
\usage{
create_room(RoomName, Description = NULL, ProfileArn = NULL,
  ProviderCalendarId = NULL, ClientRequestToken = NULL, Tags = NULL)
}
\arguments{
\item{RoomName}{[required] The name for the room.}

\item{Description}{The description for the room.}

\item{ProfileArn}{The profile ARN for the room.}

\item{ProviderCalendarId}{The calendar ARN for the room.}

\item{ClientRequestToken}{A unique, user-specified identifier for this request that ensures idempotency.}

\item{Tags}{The tags for the room.}
}
\description{
Creates a room with the specified details.
}
\section{Accepted Parameters}{
\preformatted{create_room(
  RoomName = "string",
  Description = "string",
  ProfileArn = "string",
  ProviderCalendarId = "string",
  ClientRequestToken = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

