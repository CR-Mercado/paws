% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iot_operations.R
\name{reject_certificate_transfer}
\alias{reject_certificate_transfer}
\title{Rejects a pending certificate transfer}
\usage{
reject_certificate_transfer(certificateId, rejectReason = NULL)
}
\arguments{
\item{certificateId}{[required] The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)}

\item{rejectReason}{The reason the certificate transfer was rejected.}
}
\description{
Rejects a pending certificate transfer. After AWS IoT rejects a certificate transfer, the certificate status changes from \strong{PENDING\_TRANSFER} to \strong{INACTIVE}.
}
\details{
To check for pending certificate transfers, call ListCertificates to enumerate your certificates.

This operation can only be called by the transfer destination. After it is called, the certificate will be returned to the source's account in the INACTIVE state.
}
\section{Accepted Parameters}{
\preformatted{reject_certificate_transfer(
  certificateId = "string",
  rejectReason = "string"
)
}
}

