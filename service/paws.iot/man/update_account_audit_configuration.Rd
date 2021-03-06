% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iot_operations.R
\name{update_account_audit_configuration}
\alias{update_account_audit_configuration}
\title{Configures or reconfigures the Device Defender audit settings for this account}
\usage{
update_account_audit_configuration(roleArn = NULL,
  auditNotificationTargetConfigurations = NULL,
  auditCheckConfigurations = NULL)
}
\arguments{
\item{roleArn}{The ARN of the role that grants permission to AWS IoT to access information about your devices, policies, certificates and other items as necessary when performing an audit.}

\item{auditNotificationTargetConfigurations}{Information about the targets to which audit notifications are sent.}

\item{auditCheckConfigurations}{Specifies which audit checks are enabled and disabled for this account. Use \code{DescribeAccountAuditConfiguration} to see the list of all checks including those that are currently enabled.

Note that some data collection may begin immediately when certain checks are enabled. When a check is disabled, any data collected so far in relation to the check is deleted.

You cannot disable a check if it is used by any scheduled audit. You must first delete the check from the scheduled audit or delete the scheduled audit itself.

On the first call to \code{UpdateAccountAuditConfiguration} this parameter is required and must specify at least one enabled check.}
}
\description{
Configures or reconfigures the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.
}
\section{Accepted Parameters}{
\preformatted{update_account_audit_configuration(
  roleArn = "string",
  auditNotificationTargetConfigurations = list(
    list(
      targetArn = "string",
      roleArn = "string",
      enabled = TRUE|FALSE
    )
  ),
  auditCheckConfigurations = list(
    list(
      enabled = TRUE|FALSE
    )
  )
)
}
}

