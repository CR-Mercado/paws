% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.servicecatalog_operations.R
\name{describe_product}
\alias{describe_product}
\title{Gets information about the specified product}
\usage{
describe_product(AcceptLanguage = NULL, Id)
}
\arguments{
\item{AcceptLanguage}{The language code.
\itemize{
\item \code{en} - English (default)
\item \code{jp} - Japanese
\item \code{zh} - Chinese
}}

\item{Id}{[required] The product identifier.}
}
\description{
Gets information about the specified product.
}
\section{Accepted Parameters}{
\preformatted{describe_product(
  AcceptLanguage = "string",
  Id = "string"
)
}
}

