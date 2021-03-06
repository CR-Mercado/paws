% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iot_operations.R
\name{start_on_demand_audit_task}
\alias{start_on_demand_audit_task}
\title{Starts an on-demand Device Defender audit}
\usage{
start_on_demand_audit_task(targetCheckNames)
}
\arguments{
\item{targetCheckNames}{[required] Which checks are performed during the audit. The checks you specify must be enabled for your account or an exception occurs. Use \code{DescribeAccountAuditConfiguration} to see the list of all checks including those that are enabled or \code{UpdateAccountAuditConfiguration} to select which checks are enabled.}
}
\description{
Starts an on-demand Device Defender audit.
}
\section{Accepted Parameters}{
\preformatted{start_on_demand_audit_task(
  targetCheckNames = list(
    "string"
  )
)
}
}

