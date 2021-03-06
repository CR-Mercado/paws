% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudhsmv2_operations.R
\name{restore_backup}
\alias{restore_backup}
\title{Restores a specified AWS CloudHSM backup that is in the PENDING_DELETION state}
\usage{
restore_backup(BackupId)
}
\arguments{
\item{BackupId}{[required] The ID of the backup to be restored. To find the ID of a backup, use the DescribeBackups operation.}
}
\description{
Restores a specified AWS CloudHSM backup that is in the \code{PENDING_DELETION} state. For more information on deleting a backup, see DeleteBackup.
}
\section{Accepted Parameters}{
\preformatted{restore_backup(
  BackupId = "string"
)
}
}

