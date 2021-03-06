% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.databasemigrationservice_operations.R
\name{delete_certificate}
\alias{delete_certificate}
\title{Deletes the specified certificate}
\usage{
delete_certificate(CertificateArn)
}
\arguments{
\item{CertificateArn}{[required] The Amazon Resource Name (ARN) of the deleted certificate.}
}
\description{
Deletes the specified certificate.
}
\section{Accepted Parameters}{
\preformatted{delete_certificate(
  CertificateArn = "string"
)
}
}

\examples{
# Deletes the specified certificate.
\donttest{delete_certificate(
  CertificateArn = "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUSM457DE6XFJCJQ"
)}

}
