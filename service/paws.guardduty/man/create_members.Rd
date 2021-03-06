% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.guardduty_operations.R
\name{create_members}
\alias{create_members}
\title{Creates member accounts of the current AWS account by specifying a list of AWS account IDs}
\usage{
create_members(AccountDetails, DetectorId)
}
\arguments{
\item{AccountDetails}{[required] A list of account ID and email address pairs of the accounts that you want to associate with the master GuardDuty account.}

\item{DetectorId}{[required] The unique ID of the detector of the GuardDuty account with which you want to associate member accounts.}
}
\description{
Creates member accounts of the current AWS account by specifying a list of AWS account IDs. The current AWS account can then invite these members to manage GuardDuty in their accounts.
}
\section{Accepted Parameters}{
\preformatted{create_members(
  AccountDetails = list(
    list(
      AccountId = "string",
      Email = "string"
    )
  ),
  DetectorId = "string"
)
}
}

