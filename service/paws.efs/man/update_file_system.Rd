% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.efs_operations.R
\name{update_file_system}
\alias{update_file_system}
\title{Updates the throughput mode or the amount of provisioned throughput of an existing file system}
\usage{
update_file_system(FileSystemId, ThroughputMode = NULL,
  ProvisionedThroughputInMibps = NULL)
}
\arguments{
\item{FileSystemId}{[required] The ID of the file system that you want to update.}

\item{ThroughputMode}{(Optional) The throughput mode that you want your file system to use. If you're not updating your throughput mode, you don't need to provide this value in your request.}

\item{ProvisionedThroughputInMibps}{(Optional) The amount of throughput, in MiB/s, that you want to provision for your file system. If you're not updating the amount of provisioned throughput for your file system, you don't need to provide this value in your request.}
}
\description{
Updates the throughput mode or the amount of provisioned throughput of an existing file system.
}
\section{Accepted Parameters}{
\preformatted{update_file_system(
  FileSystemId = "string",
  ThroughputMode = "bursting"|"provisioned",
  ProvisionedThroughputInMibps = 123.0
)
}
}

