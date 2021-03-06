% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.chime_operations.R
\name{update_account_settings}
\alias{update_account_settings}
\title{Updates the settings for the specified Amazon Chime account}
\usage{
update_account_settings(AccountId, AccountSettings)
}
\arguments{
\item{AccountId}{[required] The Amazon Chime account ID.}

\item{AccountSettings}{[required] The Amazon Chime account settings to update.}
}
\description{
Updates the settings for the specified Amazon Chime account. You can update settings for remote control of shared screens, or for the dial-out option. For more information about these settings, see \href{http://docs.aws.amazon.com/chime/latest/ag/policies.html}{Use the Policies Page} in the \emph{Amazon Chime Administration Guide}.
}
\section{Accepted Parameters}{
\preformatted{update_account_settings(
  AccountId = "string",
  AccountSettings = list(
    DisableRemoteControl = TRUE|FALSE,
    EnableDialOut = TRUE|FALSE
  )
)
}
}

