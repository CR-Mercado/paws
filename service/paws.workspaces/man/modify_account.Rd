% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.workspaces_operations.R
\name{modify_account}
\alias{modify_account}
\title{Modifies the configuration of bring your own license (BYOL) for the specified account}
\usage{
modify_account(DedicatedTenancySupport = NULL,
  DedicatedTenancyManagementCidrRange = NULL)
}
\arguments{
\item{DedicatedTenancySupport}{The status of BYOL.}

\item{DedicatedTenancyManagementCidrRange}{The IP address range, specified as an IPv4 CIDR block, for the management network interface. Specify an IP address range that is compatible with your network and in CIDR notation (that is, specify the range as an IPv4 CIDR block). The CIDR block size must be /16 (for example, 203.0.113.25/16). It must also be specified as available by the \code{ListAvailableManagementCidrRanges} operation.}
}
\description{
Modifies the configuration of bring your own license (BYOL) for the specified account.
}
\section{Accepted Parameters}{
\preformatted{modify_account(
  DedicatedTenancySupport = "ENABLED",
  DedicatedTenancyManagementCidrRange = "string"
)
}
}

