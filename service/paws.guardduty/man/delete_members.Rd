% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.guardduty_operations.R
\name{delete_members}
\alias{delete_members}
\title{Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs}
\usage{
delete_members(AccountIds, DetectorId)
}
\arguments{
\item{AccountIds}{[required] A list of account IDs of the GuardDuty member accounts that you want to delete.}

\item{DetectorId}{[required] The unique ID of the detector of the GuardDuty account whose members you want to delete.}
}
\description{
Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
}
\section{Accepted Parameters}{
\preformatted{delete_members(
  AccountIds = list(
    "string"
  ),
  DetectorId = "string"
)
}
}

