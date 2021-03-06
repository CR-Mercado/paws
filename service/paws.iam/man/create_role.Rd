% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iam_operations.R
\name{create_role}
\alias{create_role}
\title{Creates a new role for your AWS account}
\usage{
create_role(Path = NULL, RoleName, AssumeRolePolicyDocument,
  Description = NULL, MaxSessionDuration = NULL,
  PermissionsBoundary = NULL, Tags = NULL)
}
\arguments{
\item{Path}{The path to the role. For more information about paths, see \href{http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html}{IAM Identifiers} in the \emph{IAM User Guide}.

This parameter is optional. If it is not included, it defaults to a slash (/).

This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.}

\item{RoleName}{[required] The name of the role to create.

This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: \_+=,.@-

Role names are not distinguished by case. For example, you cannot create roles named both "PRODROLE" and "prodrole".}

\item{AssumeRolePolicyDocument}{[required] The trust relationship policy document that grants an entity permission to assume the role.

The \href{http://wikipedia.org/wiki/regex}{regex pattern} used to validate this parameter is a string of characters consisting of the following:
\itemize{
\item Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range
\item The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)
\item The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)
}}

\item{Description}{A description of the role.}

\item{MaxSessionDuration}{The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.

Anyone who assumes the role from the AWS CLI or API can use the \code{DurationSeconds} API parameter or the \code{duration-seconds} CLI parameter to request a longer session. The \code{MaxSessionDuration} setting determines the maximum duration that can be requested using the \code{DurationSeconds} parameter. If users don't specify a value for the \code{DurationSeconds} parameter, their security credentials are valid for one hour by default. This applies when you use the \code{AssumeRole*} API operations or the \code{assume-role*} CLI operations but does not apply when you use those operations to create a console URL. For more information, see \href{http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html}{Using IAM Roles} in the \emph{IAM User Guide}.}

\item{PermissionsBoundary}{The ARN of the policy that is used to set the permissions boundary for the role.}

\item{Tags}{A list of tags that you want to attach to the newly created role. Each tag consists of a key name and an associated value. For more information about tagging, see \href{http://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html}{Tagging IAM Identities} in the \emph{IAM User Guide}.

If any one of the tags is invalid or if you exceed the allowed number of tags per role, then the entire request fails and the role is not created.}
}
\description{
Creates a new role for your AWS account. For more information about roles, go to \href{http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html}{IAM Roles}. For information about limitations on role names and the number of roles you can create, go to \href{http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html}{Limitations on IAM Entities} in the \emph{IAM User Guide}.
}
\section{Accepted Parameters}{
\preformatted{create_role(
  Path = "string",
  RoleName = "string",
  AssumeRolePolicyDocument = "string",
  Description = "string",
  MaxSessionDuration = 123,
  PermissionsBoundary = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\examples{
# The following command creates a role named Test-Role and attaches a
# trust policy to it that is provided as a URL-encoded JSON string.
\donttest{create_role(
  AssumeRolePolicyDocument = "<URL-encoded-JSON>",
  Path = "/",
  RoleName = "Test-Role"
)}

}
