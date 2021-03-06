% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.gamelift_operations.R
\name{get_game_session_log_url}
\alias{get_game_session_log_url}
\title{Retrieves the location of stored game session logs for a specified game session}
\usage{
get_game_session_log_url(GameSessionId)
}
\arguments{
\item{GameSessionId}{[required] Unique identifier for the game session to get logs for.}
}
\description{
Retrieves the location of stored game session logs for a specified game session. When a game session is terminated, Amazon GameLift automatically stores the logs in Amazon S3 and retains them for 14 days. Use this URL to download the logs.
}
\details{
See the \href{https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift}{AWS Service Limits} page for maximum log file sizes. Log files that exceed this limit are not saved.
\itemize{
\item CreateGameSession
\item DescribeGameSessions
\item DescribeGameSessionDetails
\item SearchGameSessions
\item UpdateGameSession
\item GetGameSessionLogUrl
\item Game session placements
\item StartGameSessionPlacement
\item DescribeGameSessionPlacement
\item StopGameSessionPlacement
}
}
\section{Accepted Parameters}{
\preformatted{get_game_session_log_url(
  GameSessionId = "string"
)
}
}

