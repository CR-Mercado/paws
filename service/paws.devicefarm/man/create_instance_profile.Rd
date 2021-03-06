% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.devicefarm_operations.R
\name{create_instance_profile}
\alias{create_instance_profile}
\title{Creates a profile that can be applied to one or more private fleet device instances}
\usage{
create_instance_profile(name, description = NULL,
  packageCleanup = NULL, excludeAppPackagesFromCleanup = NULL,
  rebootAfterUse = NULL)
}
\arguments{
\item{name}{[required] The name of your instance profile.}

\item{description}{The description of your instance profile.}

\item{packageCleanup}{When set to \code{true}, Device Farm will remove app packages after a test run. The default value is \code{false} for private devices.}

\item{excludeAppPackagesFromCleanup}{An array of strings specifying the list of app packages that should not be cleaned up from the device after a test run is over.

The list of packages is only considered if you set \code{packageCleanup} to \code{true}.}

\item{rebootAfterUse}{When set to \code{true}, Device Farm will reboot the instance after a test run. The default value is \code{true}.}
}
\description{
Creates a profile that can be applied to one or more private fleet device instances.
}
\section{Accepted Parameters}{
\preformatted{create_instance_profile(
  name = "string",
  description = "string",
  packageCleanup = TRUE|FALSE,
  excludeAppPackagesFromCleanup = list(
    "string"
  ),
  rebootAfterUse = TRUE|FALSE
)
}
}

