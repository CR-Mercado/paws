% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iam_operations.R
\name{deactivate_mfa_device}
\alias{deactivate_mfa_device}
\title{Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled}
\usage{
deactivate_mfa_device(UserName, SerialNumber)
}
\arguments{
\item{UserName}{[required] The name of the user whose MFA device you want to deactivate.

This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: \_+=,.@-}

\item{SerialNumber}{[required] The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.

This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-}
}
\description{
Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled.
}
\details{
For more information about creating and working with virtual MFA devices, go to \href{http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html}{Enabling a Virtual Multi-factor Authentication (MFA) Device} in the \emph{IAM User Guide}.
}
\section{Accepted Parameters}{
\preformatted{deactivate_mfa_device(
  UserName = "string",
  SerialNumber = "string"
)
}
}

