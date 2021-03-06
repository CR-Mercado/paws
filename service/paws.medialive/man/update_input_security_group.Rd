% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.medialive_operations.R
\name{update_input_security_group}
\alias{update_input_security_group}
\title{Update an Input Security Group's Whilelists}
\usage{
update_input_security_group(InputSecurityGroupId, Tags = NULL,
  WhitelistRules = NULL)
}
\arguments{
\item{InputSecurityGroupId}{[required] The id of the Input Security Group to update.}

\item{Tags}{A collection of key-value pairs.}

\item{WhitelistRules}{List of IPv4 CIDR addresses to whitelist}
}
\description{
Update an Input Security Group's Whilelists.
}
\section{Accepted Parameters}{
\preformatted{update_input_security_group(
  InputSecurityGroupId = "string",
  Tags = list(
    "string"
  ),
  WhitelistRules = list(
    list(
      Cidr = "string"
    )
  )
)
}
}

