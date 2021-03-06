% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.backup_operations.R
\name{get_recovery_point_restore_metadata}
\alias{get_recovery_point_restore_metadata}
\title{Returns two sets of metadata key-value pairs}
\usage{
get_recovery_point_restore_metadata(BackupVaultName, RecoveryPointArn)
}
\arguments{
\item{BackupVaultName}{[required] The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens.}

\item{RecoveryPointArn}{[required] An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example, \code{arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45}.}
}
\description{
Returns two sets of metadata key-value pairs. The first set lists the metadata that the recovery point was created with. The second set lists the metadata key-value pairs that are required to restore the recovery point.
}
\details{
These sets can be the same, or the restore metadata set can contain different values if the target service to be restored has changed since the recovery point was created and now requires additional or different information in order to be restored.
}
\section{Accepted Parameters}{
\preformatted{get_recovery_point_restore_metadata(
  BackupVaultName = "string",
  RecoveryPointArn = "string"
)
}
}

