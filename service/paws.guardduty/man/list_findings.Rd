% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.guardduty_operations.R
\name{list_findings}
\alias{list_findings}
\title{Lists Amazon GuardDuty findings for the specified detector ID}
\usage{
list_findings(DetectorId, FindingCriteria = NULL, MaxResults = NULL,
  NextToken = NULL, SortCriteria = NULL)
}
\arguments{
\item{DetectorId}{[required] The ID of the detector that specifies the GuardDuty service whose findings you want to list.}

\item{FindingCriteria}{Represents the criteria used for querying findings.}

\item{MaxResults}{You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.}

\item{NextToken}{You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListFindings action. For subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.}

\item{SortCriteria}{Represents the criteria used for sorting findings.}
}
\description{
Lists Amazon GuardDuty findings for the specified detector ID.
}
\section{Accepted Parameters}{
\preformatted{list_findings(
  DetectorId = "string",
  FindingCriteria = list(
    Criterion = list(
      list(
        Eq = list(
          "string"
        ),
        Gt = 123,
        Gte = 123,
        Lt = 123,
        Lte = 123,
        Neq = list(
          "string"
        )
      )
    )
  ),
  MaxResults = 123,
  NextToken = "string",
  SortCriteria = list(
    AttributeName = "string",
    OrderBy = "ASC"|"DESC"
  )
)
}
}

