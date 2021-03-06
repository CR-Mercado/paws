% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iam_operations.R
\name{update_assume_role_policy}
\alias{update_assume_role_policy}
\title{Updates the policy that grants an IAM entity permission to assume a role}
\usage{
update_assume_role_policy(RoleName, PolicyDocument)
}
\arguments{
\item{RoleName}{[required] The name of the role to update with the new policy.

This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: \_+=,.@-}

\item{PolicyDocument}{[required] The policy that grants an entity permission to assume the role.

The \href{http://wikipedia.org/wiki/regex}{regex pattern} used to validate this parameter is a string of characters consisting of the following:
\itemize{
\item Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range
\item The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)
\item The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)
}}
}
\description{
Updates the policy that grants an IAM entity permission to assume a role. This is typically referred to as the "role trust policy". For more information about roles, go to \href{http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html}{Using Roles to Delegate Permissions and Federate Identities}.
}
\section{Accepted Parameters}{
\preformatted{update_assume_role_policy(
  RoleName = "string",
  PolicyDocument = "string"
)
}
}

\examples{
# The following command updates the role trust policy for the role named
# Test-Role:
\donttest{update_assume_role_policy(
  PolicyDocument = "{\\"Version\\":\\"2012-10-17\\",\\"Statement\\":[{\\"Effect\\":\\"Allow\\",\\"Principal\\":{\\"Service\\":[\\"ec2.amazonaws.com\\"]},\\"Action\\":[\\"sts:AssumeRole\\"]}]}",
  RoleName = "S3AccessForEC2Instances"
)}

}
