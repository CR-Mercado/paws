% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.glacier_operations.R
\name{delete_archive}
\alias{delete_archive}
\title{This operation deletes an archive from a vault}
\usage{
delete_archive(accountId, vaultName, archiveId)
}
\arguments{
\item{accountId}{[required] The \code{AccountId} value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '\code{-}' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.}

\item{vaultName}{[required] The name of the vault.}

\item{archiveId}{[required] The ID of the archive to delete.}
}
\description{
This operation deletes an archive from a vault. Subsequent requests to initiate a retrieval of this archive will fail. Archive retrievals that are in progress for this archive ID may or may not succeed according to the following scenarios:
}
\details{
\itemize{
\item If the archive retrieval job is actively preparing the data for download when Amazon Glacier receives the delete archive request, the archival retrieval operation might fail.
\item If the archive retrieval job has successfully prepared the archive for download when Amazon Glacier receives the delete archive request, you will be able to download the output.
}

This operation is idempotent. Attempting to delete an already-deleted archive does not result in an error.

An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see \href{http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html}{Access Control Using AWS Identity and Access Management (IAM)}.

For conceptual information and underlying REST API, see \href{http://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-an-archive.html}{Deleting an Archive in Amazon Glacier} and \href{http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html}{Delete Archive} in the \emph{Amazon Glacier Developer Guide}.
}
\section{Accepted Parameters}{
\preformatted{delete_archive(
  accountId = "string",
  vaultName = "string",
  archiveId = "string"
)
}
}

\examples{
# The example deletes the archive specified by the archive ID.
\donttest{delete_archive(
  accountId = "-",
  archiveId = "NkbByEejwEggmBz2fTHgJrg0XBoDfjP4q6iu87-TjhqG6eGoOY9Z8i1_AUyUsuhPAdTqLHy8pTl5nfCFJmDl2yEZONi5L26Omw12vcs01MNGntHEQL8MBfGlqrEXAMPLEArchiveId",
  vaultName = "examplevault"
)}

}
