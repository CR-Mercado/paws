% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.acmpca_operations.R
\name{tag_certificate_authority}
\alias{tag_certificate_authority}
\title{Adds one or more tags to your private CA}
\usage{
tag_certificate_authority(CertificateAuthorityArn, Tags)
}
\arguments{
\item{CertificateAuthorityArn}{[required] The Amazon Resource Name (ARN) that was returned when you called CreateCertificateAuthority. This must be of the form:

\code{arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 region:account:certificate-authority/12345678-1234-1234-1234-123456789012 }}

\item{Tags}{[required] List of tags to be associated with the CA.}
}
\description{
Adds one or more tags to your private CA. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a key and an optional value. You specify the private CA on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair. You can apply a tag to just one private CA if you want to identify a specific characteristic of that CA, or you can apply the same tag to multiple private CAs if you want to filter for a common relationship among those CAs. To remove one or more tags, use the UntagCertificateAuthority operation. Call the ListTags operation to see what tags are associated with your CA.
}
\section{Accepted Parameters}{
\preformatted{tag_certificate_authority(
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

