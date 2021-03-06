% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.efs_operations.R
\name{delete_file_system}
\alias{delete_file_system}
\title{Deletes a file system, permanently severing access to its contents}
\usage{
delete_file_system(FileSystemId)
}
\arguments{
\item{FileSystemId}{[required] ID of the file system you want to delete.}
}
\description{
Deletes a file system, permanently severing access to its contents. Upon return, the file system no longer exists and you can't access any contents of the deleted file system.
}
\details{
You can't delete a file system that is in use. That is, if the file system has any mount targets, you must first delete them. For more information, see DescribeMountTargets and DeleteMountTarget.

The \code{DeleteFileSystem} call returns while the file system state is still \code{deleting}. You can check the file system deletion status by calling the DescribeFileSystems operation, which returns a list of file systems in your account. If you pass file system ID or creation token for the deleted file system, the DescribeFileSystems returns a \code{404 FileSystemNotFound} error.

This operation requires permissions for the \code{elasticfilesystem:DeleteFileSystem} action.
}
\section{Accepted Parameters}{
\preformatted{delete_file_system(
  FileSystemId = "string"
)
}
}

\examples{
# This operation deletes an EFS file system.
\donttest{delete_file_system(
  FileSystemId = "fs-01234567"
)}

}
