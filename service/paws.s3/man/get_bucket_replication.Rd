% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.s3_operations.R
\name{get_bucket_replication}
\alias{get_bucket_replication}
\title{Returns the replication configuration of a bucket}
\usage{
get_bucket_replication(Bucket)
}
\arguments{
\item{Bucket}{[required]}
}
\description{
Returns the replication configuration of a bucket.
}
\details{
It can take a while to propagate the put or delete a replication configuration to all Amazon S3 systems. Therefore, a get request soon after put or delete can return a wrong result.
}
\section{Accepted Parameters}{
\preformatted{get_bucket_replication(
  Bucket = "string"
)
}
}

\examples{
# The following example returns replication configuration set on a bucket.
\donttest{get_bucket_replication(
  Bucket = "examplebucket"
)}

}
