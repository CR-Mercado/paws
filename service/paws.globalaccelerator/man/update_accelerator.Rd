% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.globalaccelerator_operations.R
\name{update_accelerator}
\alias{update_accelerator}
\title{Update an accelerator}
\usage{
update_accelerator(AcceleratorArn, Name = NULL, IpAddressType = NULL,
  Enabled = NULL)
}
\arguments{
\item{AcceleratorArn}{[required] The Amazon Resource Name (ARN) of the accelerator to update.}

\item{Name}{The name of the accelerator. The name can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens (-), and must not begin or end with a hyphen.}

\item{IpAddressType}{The value for the address type must be IPv4.}

\item{Enabled}{Indicates whether an accelerator is enabled. The value is true or false. The default value is true.

If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.}
}
\description{
Update an accelerator.
}
\section{Accepted Parameters}{
\preformatted{update_accelerator(
  AcceleratorArn = "string",
  Name = "string",
  IpAddressType = "IPV4",
  Enabled = TRUE|FALSE
)
}
}

