% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.acmpca_operations.R
\name{untag_certificate_authority}
\alias{untag_certificate_authority}
\title{Remove one or more tags from your private CA}
\usage{
untag_certificate_authority(CertificateAuthorityArn, Tags)
}
\arguments{
\item{CertificateAuthorityArn}{[required] The Amazon Resource Name (ARN) that was returned when you called CreateCertificateAuthority. This must be of the form:

\code{arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 region:account:certificate-authority/12345678-1234-1234-1234-123456789012 }}

\item{Tags}{[required] List of tags to be removed from the CA.}
}
\description{
Remove one or more tags from your private CA. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this operation, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value. To add tags to a private CA, use the TagCertificateAuthority. Call the ListTags operation to see what tags are associated with your CA.
}
\section{Accepted Parameters}{
\preformatted{untag_certificate_authority(
  CertificateAuthorityArn = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

