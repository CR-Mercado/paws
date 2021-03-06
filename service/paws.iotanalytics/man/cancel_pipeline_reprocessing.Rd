% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iotanalytics_operations.R
\name{cancel_pipeline_reprocessing}
\alias{cancel_pipeline_reprocessing}
\title{Cancels the reprocessing of data through the pipeline}
\usage{
cancel_pipeline_reprocessing(pipelineName, reprocessingId)
}
\arguments{
\item{pipelineName}{[required] The name of pipeline for which data reprocessing is canceled.}

\item{reprocessingId}{[required] The ID of the reprocessing task (returned by "StartPipelineReprocessing").}
}
\description{
Cancels the reprocessing of data through the pipeline.
}
\section{Accepted Parameters}{
\preformatted{cancel_pipeline_reprocessing(
  pipelineName = "string",
  reprocessingId = "string"
)
}
}

