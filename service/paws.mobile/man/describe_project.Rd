% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.mobile_operations.R
\name{describe_project}
\alias{describe_project}
\title{Gets details about a project in AWS Mobile Hub}
\usage{
describe_project(projectId, syncFromResources = NULL)
}
\arguments{
\item{projectId}{[required] Unique project identifier.}

\item{syncFromResources}{If set to true, causes AWS Mobile Hub to synchronize information from other services, e.g., update state of AWS CloudFormation stacks in the AWS Mobile Hub project.}
}
\description{
Gets details about a project in AWS Mobile Hub.
}
\section{Accepted Parameters}{
\preformatted{describe_project(
  projectId = "string",
  syncFromResources = TRUE|FALSE
)
}
}

