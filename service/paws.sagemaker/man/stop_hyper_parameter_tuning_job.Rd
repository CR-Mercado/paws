% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.sagemaker_operations.R
\name{stop_hyper_parameter_tuning_job}
\alias{stop_hyper_parameter_tuning_job}
\title{Stops a running hyperparameter tuning job and all running training jobs that the tuning job launched}
\usage{
stop_hyper_parameter_tuning_job(HyperParameterTuningJobName)
}
\arguments{
\item{HyperParameterTuningJobName}{[required] The name of the tuning job to stop.}
}
\description{
Stops a running hyperparameter tuning job and all running training jobs that the tuning job launched.
}
\details{
All model artifacts output from the training jobs are stored in Amazon Simple Storage Service (Amazon S3). All data that the training jobs write to Amazon CloudWatch Logs are still available in CloudWatch. After the tuning job moves to the \code{Stopped} state, it releases all reserved resources for the tuning job.
}
\section{Accepted Parameters}{
\preformatted{stop_hyper_parameter_tuning_job(
  HyperParameterTuningJobName = "string"
)
}
}

