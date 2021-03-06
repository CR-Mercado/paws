% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudfront_operations.R
\name{create_public_key}
\alias{create_public_key}
\title{Add a new public key to CloudFront to use, for example, for field-level encryption}
\usage{
create_public_key(PublicKeyConfig)
}
\arguments{
\item{PublicKeyConfig}{[required] The request to add a public key to CloudFront.}
}
\description{
Add a new public key to CloudFront to use, for example, for field-level encryption. You can add a maximum of 10 public keys with one AWS account.
}
\section{Accepted Parameters}{
\preformatted{create_public_key(
  PublicKeyConfig = list(
    CallerReference = "string",
    Name = "string",
    EncodedKey = "string",
    Comment = "string"
  )
)
}
}

