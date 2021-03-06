% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.backup_operations.R
\name{create_backup_plan}
\alias{create_backup_plan}
\title{Backup plans are documents that contain information that AWS Backup uses to schedule tasks that create recovery points of resources}
\usage{
create_backup_plan(BackupPlan, BackupPlanTags = NULL,
  CreatorRequestId = NULL)
}
\arguments{
\item{BackupPlan}{[required] Specifies the body of a backup plan. Includes a \code{BackupPlanName} and one or more sets of \code{Rules}.}

\item{BackupPlanTags}{To help organize your resources, you can assign your own metadata to the resources that you create. Each tag is a key-value pair. The specified tags are assigned to all backups created with this plan.}

\item{CreatorRequestId}{Identifies the request and allows failed requests to be retried without the risk of executing the operation twice. If the request includes a \code{CreatorRequestId} that matches an existing backup plan, that plan is returned. This parameter is optional.}
}
\description{
Backup plans are documents that contain information that AWS Backup uses to schedule tasks that create recovery points of resources.
}
\details{
If you call \code{CreateBackupPlan} with a plan that already exists, the existing \code{backupPlanId} is returned.
}
\section{Accepted Parameters}{
\preformatted{create_backup_plan(
  BackupPlan = list(
    BackupPlanName = "string",
    Rules = list(
      list(
        RuleName = "string",
        TargetBackupVaultName = "string",
        ScheduleExpression = "string",
        StartWindowMinutes = 123,
        CompletionWindowMinutes = 123,
        Lifecycle = list(
          MoveToColdStorageAfterDays = 123,
          DeleteAfterDays = 123
        ),
        RecoveryPointTags = list(
          "string"
        )
      )
    )
  ),
  BackupPlanTags = list(
    "string"
  ),
  CreatorRequestId = "string"
)
}
}

