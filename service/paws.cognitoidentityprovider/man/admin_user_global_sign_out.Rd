% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cognitoidentityprovider_operations.R
\name{admin_user_global_sign_out}
\alias{admin_user_global_sign_out}
\title{Signs out users from all devices, as an administrator}
\usage{
admin_user_global_sign_out(UserPoolId, Username)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID.}

\item{Username}{[required] The user name.}
}
\description{
Signs out users from all devices, as an administrator.
}
\details{
Requires developer credentials.
}
\section{Accepted Parameters}{
\preformatted{admin_user_global_sign_out(
  UserPoolId = "string",
  Username = "string"
)
}
}

