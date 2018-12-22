% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.s3_operations.R
\name{get_bucket_location}
\alias{get_bucket_location}
\title{Returns the region the bucket resides in}
\usage{
get_bucket_location(
  Bucket = "string"
)
}
\arguments{
\item{Bucket}{[required]}
}
\description{
Returns the region the bucket resides in.
}
\examples{
# The following example returns bucket location.
get_bucket_location(
  Bucket = "examplebucket"
)

}