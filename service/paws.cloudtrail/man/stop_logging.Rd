% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudtrail_operations.R
\name{stop_logging}
\alias{stop_logging}
\title{Suspends the recording of AWS API calls and log file delivery for the specified trail}
\usage{
stop_logging(Name)
}
\arguments{
\item{Name}{[required] Specifies the name or the CloudTrail ARN of the trail for which CloudTrail will stop logging AWS API calls. The format of a trail ARN is:

\code{arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail}}
}
\description{
Suspends the recording of AWS API calls and log file delivery for the specified trail. Under most circumstances, there is no need to use this action. You can update a trail without stopping it first. This action is the only way to stop recording. For a trail enabled in all regions, this operation must be called from the region in which the trail was created, or an \code{InvalidHomeRegionException} will occur. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail enabled in all regions.
}
\section{Accepted Parameters}{
\preformatted{stop_logging(
  Name = "string"
)
}
}

