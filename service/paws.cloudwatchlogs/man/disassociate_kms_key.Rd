% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudwatchlogs_operations.R
\name{disassociate_kms_key}
\alias{disassociate_kms_key}
\title{Disassociates the associated AWS Key Management Service (AWS KMS) customer master key (CMK) from the specified log group}
\usage{
disassociate_kms_key(logGroupName)
}
\arguments{
\item{logGroupName}{[required] The name of the log group.}
}
\description{
Disassociates the associated AWS Key Management Service (AWS KMS) customer master key (CMK) from the specified log group.
}
\details{
After the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested.

Note that it can take up to 5 minutes for this operation to take effect.
}
\section{Accepted Parameters}{
\preformatted{disassociate_kms_key(
  logGroupName = "string"
)
}
}

