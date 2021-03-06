% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.datapipeline_operations.R
\name{set_status}
\alias{set_status}
\title{Requests that the status of the specified physical or logical pipeline objects be updated in the specified pipeline}
\usage{
set_status(pipelineId, objectIds, status)
}
\arguments{
\item{pipelineId}{[required] The ID of the pipeline that contains the objects.}

\item{objectIds}{[required] The IDs of the objects. The corresponding objects can be either physical or components, but not a mix of both types.}

\item{status}{[required] The status to be set on all the objects specified in \code{objectIds}. For components, use \code{PAUSE} or \code{RESUME}. For instances, use \code{TRY_CANCEL}, \code{RERUN}, or \code{MARK_FINISHED}.}
}
\description{
Requests that the status of the specified physical or logical pipeline objects be updated in the specified pipeline. This update might not occur immediately, but is eventually consistent. The status that can be set depends on the type of object (for example, DataNode or Activity). You cannot perform this operation on \code{FINISHED} pipelines and attempting to do so returns \code{InvalidRequestException}.
}
\section{Accepted Parameters}{
\preformatted{set_status(
  pipelineId = "string",
  objectIds = list(
    "string"
  ),
  status = "string"
)
}
}

