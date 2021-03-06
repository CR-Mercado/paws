% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ecs_operations.R
\name{describe_tasks}
\alias{describe_tasks}
\title{Describes a specified task or tasks}
\usage{
describe_tasks(cluster = NULL, tasks, include = NULL)
}
\arguments{
\item{cluster}{The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to describe. If you do not specify a cluster, the default cluster is assumed.}

\item{tasks}{[required] A list of up to 100 task IDs or full ARN entries.}

\item{include}{Specifies whether you want to see the resource tags for the task. If \code{TAGS} is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.}
}
\description{
Describes a specified task or tasks.
}
\section{Accepted Parameters}{
\preformatted{describe_tasks(
  cluster = "string",
  tasks = list(
    "string"
  ),
  include = list(
    "TAGS"
  )
)
}
}

\examples{
# This example provides a description of the specified task, using the
# task UUID as an identifier.
\donttest{describe_tasks(
  tasks = list(
    "c5cba4eb-5dad-405e-96db-71ef8eefe6a8"
  )
)}

}
