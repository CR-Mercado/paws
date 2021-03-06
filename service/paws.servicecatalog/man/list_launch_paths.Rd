% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.servicecatalog_operations.R
\name{list_launch_paths}
\alias{list_launch_paths}
\title{Lists the paths to the specified product}
\usage{
list_launch_paths(AcceptLanguage = NULL, ProductId, PageSize = NULL,
  PageToken = NULL)
}
\arguments{
\item{AcceptLanguage}{The language code.
\itemize{
\item \code{en} - English (default)
\item \code{jp} - Japanese
\item \code{zh} - Chinese
}}

\item{ProductId}{[required] The product identifier.}

\item{PageSize}{The maximum number of items to return with this call.}

\item{PageToken}{The page token for the next set of results. To retrieve the first set of results, use null.}
}
\description{
Lists the paths to the specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.
}
\section{Accepted Parameters}{
\preformatted{list_launch_paths(
  AcceptLanguage = "string",
  ProductId = "string",
  PageSize = 123,
  PageToken = "string"
)
}
}

