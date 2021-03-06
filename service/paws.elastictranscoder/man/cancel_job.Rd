% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.elastictranscoder_operations.R
\name{cancel_job}
\alias{cancel_job}
\title{The CancelJob operation cancels an unfinished job}
\usage{
cancel_job(Id)
}
\arguments{
\item{Id}{[required] The identifier of the job that you want to cancel.

To get a list of the jobs (including their \code{jobId}) that have a status of \code{Submitted}, use the ListJobsByStatus API action.}
}
\description{
The CancelJob operation cancels an unfinished job.
}
\details{
You can only cancel a job that has a status of \code{Submitted}. To prevent a pipeline from starting to process a job while you're getting the job identifier, use UpdatePipelineStatus to temporarily pause the pipeline.
}
\section{Accepted Parameters}{
\preformatted{cancel_job(
  Id = "string"
)
}
}

