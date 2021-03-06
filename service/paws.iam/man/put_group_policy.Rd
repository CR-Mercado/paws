% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iam_operations.R
\name{put_group_policy}
\alias{put_group_policy}
\title{Adds or updates an inline policy document that is embedded in the specified IAM group}
\usage{
put_group_policy(GroupName, PolicyName, PolicyDocument)
}
\arguments{
\item{GroupName}{[required] The name of the group to associate the policy with.

This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: \_+=,.@-}

\item{PolicyName}{[required] The name of the policy document.

This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: \_+=,.@-}

\item{PolicyDocument}{[required] The policy document.

The \href{http://wikipedia.org/wiki/regex}{regex pattern} used to validate this parameter is a string of characters consisting of the following:
\itemize{
\item Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range
\item The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)
\item The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)
}}
}
\description{
Adds or updates an inline policy document that is embedded in the specified IAM group.
}
\details{
A user can also have managed policies attached to it. To attach a managed policy to a group, use AttachGroupPolicy. To create a new managed policy, use CreatePolicy. For information about policies, see \href{http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html}{Managed Policies and Inline Policies} in the \emph{IAM User Guide}.

For information about limits on the number of inline policies that you can embed in a group, see \href{http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html}{Limitations on IAM Entities} in the \emph{IAM User Guide}.

Because policy documents can be large, you should use POST rather than GET when calling \code{PutGroupPolicy}. For general information about using the Query API with IAM, go to \href{http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html}{Making Query Requests} in the \emph{IAM User Guide}.
}
\section{Accepted Parameters}{
\preformatted{put_group_policy(
  GroupName = "string",
  PolicyName = "string",
  PolicyDocument = "string"
)
}
}

\examples{
# The following command adds a policy named AllPerms to the IAM group
# named Admins.
\donttest{put_group_policy(
  GroupName = "Admins",
  PolicyDocument = "{\\"Version\\":\\"2012-10-17\\",\\"Statement\\":{\\"Effect\\":\\"Allow\\",\\"Action\\":\\"*\\",\\"Resource\\":\\"*\\"}}",
  PolicyName = "AllPerms"
)}

}
