% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.elastictranscoder_operations.R
\name{list_presets}
\alias{list_presets}
\title{The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that you've added in an AWS region}
\usage{
list_presets(Ascending = NULL, PageToken = NULL)
}
\arguments{
\item{Ascending}{To list presets in chronological order by the date and time that they were created, enter \code{true}. To list presets in reverse chronological order, enter \code{false}.}

\item{PageToken}{When Elastic Transcoder returns more than one page of results, use \code{pageToken} in subsequent \code{GET} requests to get each successive page of results.}
}
\description{
The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that you've added in an AWS region.
}
\section{Accepted Parameters}{
\preformatted{list_presets(
  Ascending = "string",
  PageToken = "string"
)
}
}

