% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.glue_operations.R
\name{batch_stop_job_run}
\alias{batch_stop_job_run}
\title{Stops one or more job runs for a specified job definition}
\usage{
batch_stop_job_run(JobName, JobRunIds)
}
\arguments{
\item{JobName}{[required] The name of the job definition for which to stop job runs.}

\item{JobRunIds}{[required] A list of the JobRunIds that should be stopped for that job definition.}
}
\description{
Stops one or more job runs for a specified job definition.
}
\section{Accepted Parameters}{
\preformatted{batch_stop_job_run(
  JobName = "string",
  JobRunIds = list(
    "string"
  )
)
}
}

