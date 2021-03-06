% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.devicefarm_operations.R
\name{delete_project}
\alias{delete_project}
\title{Deletes an AWS Device Farm project, given the project ARN}
\usage{
delete_project(arn)
}
\arguments{
\item{arn}{[required] Represents the Amazon Resource Name (ARN) of the Device Farm project you wish to delete.}
}
\description{
Deletes an AWS Device Farm project, given the project ARN.
}
\details{
\strong{Note} Deleting this resource does not stop an in-progress run.
}
\section{Accepted Parameters}{
\preformatted{delete_project(
  arn = "string"
)
}
}

\examples{
# The following example deletes a specific project.
\donttest{delete_project(
  arn = "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456"
)}

}
