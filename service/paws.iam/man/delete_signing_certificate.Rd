% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iam_operations.R
\name{delete_signing_certificate}
\alias{delete_signing_certificate}
\title{Deletes a signing certificate associated with the specified IAM user}
\usage{
delete_signing_certificate(UserName = NULL, CertificateId)
}
\arguments{
\item{UserName}{The name of the user the signing certificate belongs to.

This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: \_+=,.@-}

\item{CertificateId}{[required] The ID of the signing certificate to delete.

The format of this parameter, as described by its \href{http://wikipedia.org/wiki/regex}{regex} pattern, is a string of characters that can be upper- or lower-cased letters or digits.}
}
\description{
Deletes a signing certificate associated with the specified IAM user.
}
\details{
If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated IAM users.
}
\section{Accepted Parameters}{
\preformatted{delete_signing_certificate(
  UserName = "string",
  CertificateId = "string"
)
}
}

\examples{
# The following command deletes the specified signing certificate for the
# IAM user named Anika.
\donttest{delete_signing_certificate(
  CertificateId = "TA7SMP42TDN5Z26OBPJE7EXAMPLE",
  UserName = "Anika"
)}

}
