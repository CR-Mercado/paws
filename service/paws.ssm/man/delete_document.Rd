% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ssm_operations.R
\name{delete_document}
\alias{delete_document}
\title{Deletes the Systems Manager document and all instance associations to the document}
\usage{
delete_document(Name)
}
\arguments{
\item{Name}{[required] The name of the document.}
}
\description{
Deletes the Systems Manager document and all instance associations to the document.
}
\details{
Before you delete the document, we recommend that you use DeleteAssociation to disassociate all instances that are associated with the document.
}
\section{Accepted Parameters}{
\preformatted{delete_document(
  Name = "string"
)
}
}

