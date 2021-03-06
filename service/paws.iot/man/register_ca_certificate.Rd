% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iot_operations.R
\name{register_ca_certificate}
\alias{register_ca_certificate}
\title{Registers a CA certificate with AWS IoT}
\usage{
register_ca_certificate(caCertificate, verificationCertificate,
  setAsActive = NULL, allowAutoRegistration = NULL,
  registrationConfig = NULL)
}
\arguments{
\item{caCertificate}{[required] The CA certificate.}

\item{verificationCertificate}{[required] The private key verification certificate.}

\item{setAsActive}{A boolean value that specifies if the CA certificate is set to active.}

\item{allowAutoRegistration}{Allows this CA certificate to be used for auto registration of device certificates.}

\item{registrationConfig}{Information about the registration configuration.}
}
\description{
Registers a CA certificate with AWS IoT. This CA certificate can then be used to sign device certificates, which can be then registered with AWS IoT. You can register up to 10 CA certificates per AWS account that have the same subject field. This enables you to have up to 10 certificate authorities sign your device certificates. If you have more than one CA certificate registered, make sure you pass the CA certificate when you register your device certificates with the RegisterCertificate API.
}
\section{Accepted Parameters}{
\preformatted{register_ca_certificate(
  caCertificate = "string",
  verificationCertificate = "string",
  setAsActive = TRUE|FALSE,
  allowAutoRegistration = TRUE|FALSE,
  registrationConfig = list(
    templateBody = "string",
    roleArn = "string"
  )
)
}
}

