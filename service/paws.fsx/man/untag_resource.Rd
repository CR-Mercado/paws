% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.fsx_operations.R
\name{untag_resource}
\alias{untag_resource}
\title{This action removes a tag from an Amazon FSx resource}
\usage{
untag_resource(ResourceARN, TagKeys)
}
\arguments{
\item{ResourceARN}{[required] The ARN of the Amazon FSx resource to untag.}

\item{TagKeys}{[required] A list of keys of tags on the resource to untag. In case the tag key doesn't exist, the call will still succeed to be idempotent.}
}
\description{
This action removes a tag from an Amazon FSx resource.
}
\section{Accepted Parameters}{
\preformatted{untag_resource(
  ResourceARN = "string",
  TagKeys = list(
    "string"
  )
)
}
}

\examples{
# This operation untags an Amazon FSx resource.
\donttest{untag_resource(
  ResourceARN = "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec",
  TagKeys = list(
    "Name"
  )
)}

}
