% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.s3_operations.R
\name{get_bucket_inventory_configuration}
\alias{get_bucket_inventory_configuration}
\title{Returns an inventory configuration (identified by the inventory ID) from the bucket}
\usage{
get_bucket_inventory_configuration(Bucket, Id)
}
\arguments{
\item{Bucket}{[required] The name of the bucket containing the inventory configuration to retrieve.}

\item{Id}{[required] The ID used to identify the inventory configuration.}
}
\description{
Returns an inventory configuration (identified by the inventory ID) from the bucket.
}
\section{Accepted Parameters}{
\preformatted{get_bucket_inventory_configuration(
  Bucket = "string",
  Id = "string"
)
}
}

