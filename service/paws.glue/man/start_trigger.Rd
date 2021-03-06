% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.glue_operations.R
\name{start_trigger}
\alias{start_trigger}
\title{Starts an existing trigger}
\usage{
start_trigger(Name)
}
\arguments{
\item{Name}{[required] The name of the trigger to start.}
}
\description{
Starts an existing trigger. See \href{http://docs.aws.amazon.com/glue/latest/dg/trigger-job.html}{Triggering Jobs} for information about how different types of trigger are started.
}
\section{Accepted Parameters}{
\preformatted{start_trigger(
  Name = "string"
)
}
}

