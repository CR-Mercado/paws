% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lightsail_operations.R
\name{delete_disk_snapshot}
\alias{delete_disk_snapshot}
\title{Deletes the specified disk snapshot}
\usage{
delete_disk_snapshot(diskSnapshotName)
}
\arguments{
\item{diskSnapshotName}{[required] The name of the disk snapshot you want to delete (e.g., \code{my-disk-snapshot}).}
}
\description{
Deletes the specified disk snapshot.
}
\details{
When you make periodic snapshots of a disk, the snapshots are incremental, and only the blocks on the device that have changed since your last snapshot are saved in the new snapshot. When you delete a snapshot, only the data not needed for any other snapshot is removed. So regardless of which prior snapshots have been deleted, all active snapshots will have access to all the information needed to restore the disk.

The \code{delete disk snapshot} operation supports tag-based access control via resource tags applied to the resource identified by diskSnapshotName. For more information, see the \href{https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags}{Lightsail Dev Guide}.
}
\section{Accepted Parameters}{
\preformatted{delete_disk_snapshot(
  diskSnapshotName = "string"
)
}
}

