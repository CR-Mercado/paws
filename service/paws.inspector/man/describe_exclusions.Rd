% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.inspector_operations.R
\name{describe_exclusions}
\alias{describe_exclusions}
\title{Describes the exclusions that are specified by the exclusions' ARNs}
\usage{
describe_exclusions(exclusionArns, locale = NULL)
}
\arguments{
\item{exclusionArns}{[required] The list of ARNs that specify the exclusions that you want to describe.}

\item{locale}{The locale into which you want to translate the exclusion's title, description, and recommendation.}
}
\description{
Describes the exclusions that are specified by the exclusions' ARNs.
}
\section{Accepted Parameters}{
\preformatted{describe_exclusions(
  exclusionArns = list(
    "string"
  ),
  locale = "EN_US"
)
}
}

