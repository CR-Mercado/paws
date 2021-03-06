% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iam_operations.R
\name{get_user}
\alias{get_user}
\title{Retrieves information about the specified IAM user, including the user's creation date, path, unique ID, and ARN}
\usage{
get_user(UserName = NULL)
}
\arguments{
\item{UserName}{The name of the user to get information about.

This parameter is optional. If it is not included, it defaults to the user making the request. This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: \_+=,.@-}
}
\description{
Retrieves information about the specified IAM user, including the user's creation date, path, unique ID, and ARN.
}
\details{
If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID used to sign the request to this API.
}
\section{Accepted Parameters}{
\preformatted{get_user(
  UserName = "string"
)
}
}

\examples{
# The following command gets information about the IAM user named Bob.
\donttest{get_user(
  UserName = "Bob"
)}

}
