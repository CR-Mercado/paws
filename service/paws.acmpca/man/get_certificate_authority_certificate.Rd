% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.acmpca_operations.R
\name{get_certificate_authority_certificate}
\alias{get_certificate_authority_certificate}
\title{Retrieves the certificate and certificate chain for your private certificate authority (CA)}
\usage{
get_certificate_authority_certificate(CertificateAuthorityArn)
}
\arguments{
\item{CertificateAuthorityArn}{[required] The Amazon Resource Name (ARN) of your private CA. This is of the form:

\code{arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 region:account:certificate-authority/12345678-1234-1234-1234-123456789012 }.}
}
\description{
Retrieves the certificate and certificate chain for your private certificate authority (CA). Both the certificate and the chain are base64 PEM-encoded. The chain does not include the CA certificate. Each certificate in the chain signs the one before it.
}
\section{Accepted Parameters}{
\preformatted{get_certificate_authority_certificate(
  CertificateAuthorityArn = "string"
)
}
}

