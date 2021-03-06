% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iot_operations.R
\name{delete_certificate}
\alias{delete_certificate}
\title{Deletes the specified certificate}
\usage{
delete_certificate(certificateId, forceDelete = NULL)
}
\arguments{
\item{certificateId}{[required] The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)}

\item{forceDelete}{Forces a certificate request to be deleted.}
}
\description{
Deletes the specified certificate.
}
\details{
A certificate cannot be deleted if it has a policy attached to it or if its status is set to ACTIVE. To delete a certificate, first use the DetachPrincipalPolicy API to detach all policies. Next, use the UpdateCertificate API to set the certificate to the INACTIVE status.
}
\section{Accepted Parameters}{
\preformatted{delete_certificate(
  certificateId = "string",
  forceDelete = TRUE|FALSE
)
}
}

