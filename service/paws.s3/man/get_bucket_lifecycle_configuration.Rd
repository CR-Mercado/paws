% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.s3_operations.R
\name{get_bucket_lifecycle_configuration}
\alias{get_bucket_lifecycle_configuration}
\title{Returns the lifecycle configuration information set on the bucket}
\usage{
get_bucket_lifecycle_configuration(Bucket)
}
\arguments{
\item{Bucket}{[required]}
}
\description{
Returns the lifecycle configuration information set on the bucket.
}
\section{Accepted Parameters}{
\preformatted{get_bucket_lifecycle_configuration(
  Bucket = "string"
)
}
}

\examples{
# The following example retrieves lifecycle configuration on set on a
# bucket. 
\donttest{get_bucket_lifecycle_configuration(
  Bucket = "examplebucket"
)}

}
