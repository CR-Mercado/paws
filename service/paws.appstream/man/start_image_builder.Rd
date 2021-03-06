% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.appstream_operations.R
\name{start_image_builder}
\alias{start_image_builder}
\title{Starts the specified image builder}
\usage{
start_image_builder(Name, AppstreamAgentVersion = NULL)
}
\arguments{
\item{Name}{[required] The name of the image builder.}

\item{AppstreamAgentVersion}{The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST].}
}
\description{
Starts the specified image builder.
}
\section{Accepted Parameters}{
\preformatted{start_image_builder(
  Name = "string",
  AppstreamAgentVersion = "string"
)
}
}

