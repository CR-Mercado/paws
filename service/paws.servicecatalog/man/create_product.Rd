% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.servicecatalog_operations.R
\name{create_product}
\alias{create_product}
\title{Creates a product}
\usage{
create_product(AcceptLanguage = NULL, Name, Owner, Description = NULL,
  Distributor = NULL, SupportDescription = NULL, SupportEmail = NULL,
  SupportUrl = NULL, ProductType, Tags = NULL,
  ProvisioningArtifactParameters, IdempotencyToken)
}
\arguments{
\item{AcceptLanguage}{The language code.
\itemize{
\item \code{en} - English (default)
\item \code{jp} - Japanese
\item \code{zh} - Chinese
}}

\item{Name}{[required] The name of the product.}

\item{Owner}{[required] The owner of the product.}

\item{Description}{The description of the product.}

\item{Distributor}{The distributor of the product.}

\item{SupportDescription}{The support information about the product.}

\item{SupportEmail}{The contact email for product support.}

\item{SupportUrl}{The contact URL for product support.}

\item{ProductType}{[required] The type of product.}

\item{Tags}{One or more tags.}

\item{ProvisioningArtifactParameters}{[required] The configuration of the provisioning artifact.}

\item{IdempotencyToken}{[required] A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.}
}
\description{
Creates a product.
}
\section{Accepted Parameters}{
\preformatted{create_product(
  AcceptLanguage = "string",
  Name = "string",
  Owner = "string",
  Description = "string",
  Distributor = "string",
  SupportDescription = "string",
  SupportEmail = "string",
  SupportUrl = "string",
  ProductType = "CLOUD_FORMATION_TEMPLATE"|"MARKETPLACE",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  ),
  ProvisioningArtifactParameters = list(
    Name = "string",
    Description = "string",
    Info = list(
      "string"
    ),
    Type = "CLOUD_FORMATION_TEMPLATE"|"MARKETPLACE_AMI"|"MARKETPLACE_CAR"
  ),
  IdempotencyToken = "string"
)
}
}

