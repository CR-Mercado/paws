% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.sagemaker_operations.R
\name{stop_labeling_job}
\alias{stop_labeling_job}
\title{Stops a running labeling job}
\usage{
stop_labeling_job(LabelingJobName)
}
\arguments{
\item{LabelingJobName}{[required] The name of the labeling job to stop.}
}
\description{
Stops a running labeling job. A job that is stopped cannot be restarted. Any results obtained before the job is stopped are placed in the Amazon S3 output bucket.
}
\section{Accepted Parameters}{
\preformatted{stop_labeling_job(
  LabelingJobName = "string"
)
}
}

