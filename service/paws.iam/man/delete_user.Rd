% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iam_operations.R
\name{delete_user}
\alias{delete_user}
\title{Deletes the specified IAM user}
\usage{
delete_user(UserName)
}
\arguments{
\item{UserName}{[required] The name of the user to delete.

This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: \_+=,.@-}
}
\description{
Deletes the specified IAM user. The user must not belong to any groups or have any access keys, signing certificates, MFA devices enabled for AWS, or attached policies.
}
\section{Accepted Parameters}{
\preformatted{delete_user(
  UserName = "string"
)
}
}

\examples{
# The following command removes the IAM user named Bob from the current
# account.
\donttest{delete_user(
  UserName = "Bob"
)}

}
