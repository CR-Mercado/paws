% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.importexport_operations.R
\name{create_job}
\alias{create_job}
\title{This operation initiates the process of scheduling an upload or download of your data}
\usage{
create_job(JobType, Manifest, ManifestAddendum = NULL, ValidateOnly,
  APIVersion = NULL)
}
\arguments{
\item{JobType}{[required]}

\item{Manifest}{[required]}

\item{ManifestAddendum}{}

\item{ValidateOnly}{[required]}

\item{APIVersion}{}
}
\description{
This operation initiates the process of scheduling an upload or download of your data. You include in the request a manifest that describes the data transfer specifics. The response to the request includes a job ID, which you can use in other operations, a signature that you use to identify your storage device, and the address where you should ship your storage device.
}
\section{Accepted Parameters}{
\preformatted{create_job(
  JobType = "Import"|"Export",
  Manifest = "string",
  ManifestAddendum = "string",
  ValidateOnly = TRUE|FALSE,
  APIVersion = "string"
)
}
}

