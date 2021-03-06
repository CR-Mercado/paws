% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.opsworks_operations.R
\name{update_user_profile}
\alias{update_user_profile}
\title{Updates a specified user profile}
\usage{
update_user_profile(IamUserArn, SshUsername = NULL,
  SshPublicKey = NULL, AllowSelfManagement = NULL)
}
\arguments{
\item{IamUserArn}{[required] The user IAM ARN. This can also be a federated user's ARN.}

\item{SshUsername}{The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '\_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, \code{my.name} will be changed to \code{myname}. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name.}

\item{SshPublicKey}{The user's new SSH public key.}

\item{AllowSelfManagement}{Whether users can specify their own SSH public key through the My Settings page. For more information, see \href{http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html}{Managing User Permissions}.}
}
\description{
Updates a specified user profile.
}
\details{
\strong{Required Permissions}: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see \href{http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.
}
\section{Accepted Parameters}{
\preformatted{update_user_profile(
  IamUserArn = "string",
  SshUsername = "string",
  SshPublicKey = "string",
  AllowSelfManagement = TRUE|FALSE
)
}
}

