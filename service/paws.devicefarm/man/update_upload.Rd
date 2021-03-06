% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.devicefarm_operations.R
\name{update_upload}
\alias{update_upload}
\title{Update an uploaded test specification (test spec)}
\usage{
update_upload(arn, name = NULL, contentType = NULL,
  editContent = NULL)
}
\arguments{
\item{arn}{[required] The Amazon Resource Name (ARN) of the uploaded test spec.}

\item{name}{The upload's test spec file name. The name should not contain the '/' character. The test spec file name must end with the \code{.yaml} or \code{.yml} file extension.}

\item{contentType}{The upload's content type (for example, "application/x-yaml").}

\item{editContent}{Set to true if the YAML file has changed and needs to be updated; otherwise, set to false.}
}
\description{
Update an uploaded test specification (test spec).
}
\section{Accepted Parameters}{
\preformatted{update_upload(
  arn = "string",
  name = "string",
  contentType = "string",
  editContent = TRUE|FALSE
)
}
}

