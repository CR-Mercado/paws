% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.mobile_operations.R
\name{create_project}
\alias{create_project}
\title{Creates an AWS Mobile Hub project}
\usage{
create_project(name = NULL, region = NULL, contents = NULL,
  snapshotId = NULL)
}
\arguments{
\item{name}{Name of the project.}

\item{region}{Default region where project resources should be created.}

\item{contents}{ZIP or YAML file which contains configuration settings to be used when creating the project. This may be the contents of the file downloaded from the URL provided in an export project operation.}

\item{snapshotId}{Unique identifier for an exported snapshot of project configuration. This snapshot identifier is included in the share URL when a project is exported.}
}
\description{
Creates an AWS Mobile Hub project.
}
\section{Accepted Parameters}{
\preformatted{create_project(
  name = "string",
  region = "string",
  contents = raw,
  snapshotId = "string"
)
}
}

