% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iotanalytics_operations.R
\name{describe_channel}
\alias{describe_channel}
\title{Retrieves information about a channel}
\usage{
describe_channel(channelName, includeStatistics = NULL)
}
\arguments{
\item{channelName}{[required] The name of the channel whose information is retrieved.}

\item{includeStatistics}{If true, additional statistical information about the channel is included in the response.}
}
\description{
Retrieves information about a channel.
}
\section{Accepted Parameters}{
\preformatted{describe_channel(
  channelName = "string",
  includeStatistics = TRUE|FALSE
)
}
}

