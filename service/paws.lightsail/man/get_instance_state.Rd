% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lightsail_operations.R
\name{get_instance_state}
\alias{get_instance_state}
\title{Returns the state of a specific instance}
\usage{
get_instance_state(instanceName)
}
\arguments{
\item{instanceName}{[required] The name of the instance to get state information about.}
}
\description{
Returns the state of a specific instance. Works on one instance at a time.
}
\section{Accepted Parameters}{
\preformatted{get_instance_state(
  instanceName = "string"
)
}
}

