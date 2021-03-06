% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{describe_elastic_gpus}
\alias{describe_elastic_gpus}
\title{Describes the Elastic Graphics accelerator associated with your instances}
\usage{
describe_elastic_gpus(ElasticGpuIds = NULL, DryRun = NULL,
  Filters = NULL, MaxResults = NULL, NextToken = NULL)
}
\arguments{
\item{ElasticGpuIds}{One or more Elastic Graphics accelerator IDs.}

\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{Filters}{One or more filters.
\itemize{
\item \code{availability-zone} - The Availability Zone in which the Elastic Graphics accelerator resides.
\item \code{elastic-gpu-health} - The status of the Elastic Graphics accelerator (\code{OK} | \code{IMPAIRED}).
\item \code{elastic-gpu-state} - The state of the Elastic Graphics accelerator (\code{ATTACHED}).
\item \code{elastic-gpu-type} - The type of Elastic Graphics accelerator; for example, \code{eg1.medium}.
\item \code{instance-id} - The ID of the instance to which the Elastic Graphics accelerator is associated.
}}

\item{MaxResults}{The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned \code{NextToken} value. This value can be between 5 and 1000.}

\item{NextToken}{The token to request the next page of results.}
}
\description{
Describes the Elastic Graphics accelerator associated with your instances. For more information about Elastic Graphics, see \href{https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html}{Amazon Elastic Graphics}.
}
\section{Accepted Parameters}{
\preformatted{describe_elastic_gpus(
  ElasticGpuIds = list(
    "string"
  ),
  DryRun = TRUE|FALSE,
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  ),
  MaxResults = 123,
  NextToken = "string"
)
}
}

