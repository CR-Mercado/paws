% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lightsail_operations.R
\name{get_regions}
\alias{get_regions}
\title{Returns a list of all valid regions for Amazon Lightsail}
\usage{
get_regions(includeAvailabilityZones = NULL,
  includeRelationalDatabaseAvailabilityZones = NULL)
}
\arguments{
\item{includeAvailabilityZones}{A Boolean value indicating whether to also include Availability Zones in your get regions request. Availability Zones are indicated with a letter: e.g., \code{us-east-2a}.}

\item{includeRelationalDatabaseAvailabilityZones}{>A Boolean value indicating whether to also include Availability Zones for databases in your get regions request. Availability Zones are indicated with a letter (e.g., \code{us-east-2a}).}
}
\description{
Returns a list of all valid regions for Amazon Lightsail. Use the \code{include availability zones} parameter to also return the Availability Zones in a region.
}
\section{Accepted Parameters}{
\preformatted{get_regions(
  includeAvailabilityZones = TRUE|FALSE,
  includeRelationalDatabaseAvailabilityZones = TRUE|FALSE
)
}
}

