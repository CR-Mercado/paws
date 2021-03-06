% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.gamelift_operations.R
\name{delete_game_session_queue}
\alias{delete_game_session_queue}
\title{Deletes a game session queue}
\usage{
delete_game_session_queue(Name)
}
\arguments{
\item{Name}{[required] Descriptive label that is associated with game session queue. Queue names must be unique within each region.}
}
\description{
Deletes a game session queue. This action means that any StartGameSessionPlacement requests that reference this queue will fail. To delete a queue, specify the queue name.
}
\details{
\itemize{
\item CreateGameSessionQueue
\item DescribeGameSessionQueues
\item UpdateGameSessionQueue
\item DeleteGameSessionQueue
}
}
\section{Accepted Parameters}{
\preformatted{delete_game_session_queue(
  Name = "string"
)
}
}

