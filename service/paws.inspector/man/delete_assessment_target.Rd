% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.inspector_operations.R
\name{delete_assessment_target}
\alias{delete_assessment_target}
\title{Deletes the assessment target that is specified by the ARN of the assessment target}
\usage{
delete_assessment_target(assessmentTargetArn)
}
\arguments{
\item{assessmentTargetArn}{[required] The ARN that specifies the assessment target that you want to delete.}
}
\description{
Deletes the assessment target that is specified by the ARN of the assessment target.
}
\section{Accepted Parameters}{
\preformatted{delete_assessment_target(
  assessmentTargetArn = "string"
)
}
}

\examples{
# Deletes the assessment target that is specified by the ARN of the
# assessment target.
\donttest{delete_assessment_target(
  assessmentTargetArn = "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq"
)}

}
