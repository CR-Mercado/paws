% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.datapipeline_operations.R
\name{get_pipeline_definition}
\alias{get_pipeline_definition}
\title{Gets the definition of the specified pipeline}
\usage{
get_pipeline_definition(pipelineId, version = NULL)
}
\arguments{
\item{pipelineId}{[required] The ID of the pipeline.}

\item{version}{The version of the pipeline definition to retrieve. Set this parameter to \code{latest} (default) to use the last definition saved to the pipeline or \code{active} to use the last definition that was activated.}
}
\description{
Gets the definition of the specified pipeline. You can call \code{GetPipelineDefinition} to retrieve the pipeline definition that you provided using PutPipelineDefinition.
}
\section{Accepted Parameters}{
\preformatted{get_pipeline_definition(
  pipelineId = "string",
  version = "string"
)
}
}

