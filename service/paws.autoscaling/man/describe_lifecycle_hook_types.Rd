% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.autoscaling_operations.R
\name{describe_lifecycle_hook_types}
\alias{describe_lifecycle_hook_types}
\title{Describes the available types of lifecycle hooks}
\usage{
describe_lifecycle_hook_types()
}
\description{
Describes the available types of lifecycle hooks.
}
\details{
The following hook types are supported:
\itemize{
\item autoscaling:EC2\_INSTANCE\_LAUNCHING
\item autoscaling:EC2\_INSTANCE\_TERMINATING
}
}
\examples{
# This example describes the available lifecycle hook types.
\donttest{describe_lifecycle_hook_types()}

}
