% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.s3_operations.R
\name{get_bucket_metrics_configuration}
\alias{get_bucket_metrics_configuration}
\title{Gets a metrics configuration (specified by the metrics configuration ID) from the bucket}
\usage{
get_bucket_metrics_configuration(Bucket, Id)
}
\arguments{
\item{Bucket}{[required] The name of the bucket containing the metrics configuration to retrieve.}

\item{Id}{[required] The ID used to identify the metrics configuration.}
}
\description{
Gets a metrics configuration (specified by the metrics configuration ID) from the bucket.
}
\section{Accepted Parameters}{
\preformatted{get_bucket_metrics_configuration(
  Bucket = "string",
  Id = "string"
)
}
}

