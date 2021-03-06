% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.guardduty_operations.R
\name{get_findings}
\alias{get_findings}
\title{Describes Amazon GuardDuty findings specified by finding IDs}
\usage{
get_findings(DetectorId, FindingIds, SortCriteria = NULL)
}
\arguments{
\item{DetectorId}{[required] The ID of the detector that specifies the GuardDuty service whose findings you want to retrieve.}

\item{FindingIds}{[required] IDs of the findings that you want to retrieve.}

\item{SortCriteria}{Represents the criteria used for sorting findings.}
}
\description{
Describes Amazon GuardDuty findings specified by finding IDs.
}
\section{Accepted Parameters}{
\preformatted{get_findings(
  DetectorId = "string",
  FindingIds = list(
    "string"
  ),
  SortCriteria = list(
    AttributeName = "string",
    OrderBy = "ASC"|"DESC"
  )
)
}
}

