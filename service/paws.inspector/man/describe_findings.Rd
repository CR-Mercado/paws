% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.inspector_operations.R
\name{describe_findings}
\alias{describe_findings}
\title{Describes the findings that are specified by the ARNs of the findings}
\usage{
describe_findings(findingArns, locale = NULL)
}
\arguments{
\item{findingArns}{[required] The ARN that specifies the finding that you want to describe.}

\item{locale}{The locale into which you want to translate a finding description, recommendation, and the short description that identifies the finding.}
}
\description{
Describes the findings that are specified by the ARNs of the findings.
}
\section{Accepted Parameters}{
\preformatted{describe_findings(
  findingArns = list(
    "string"
  ),
  locale = "EN_US"
)
}
}

\examples{
# Describes the findings that are specified by the ARNs of the findings.
\donttest{describe_findings(
  findingArns = list(
    "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE/finding/0-HwPnsDm4"
  )
)}

}
