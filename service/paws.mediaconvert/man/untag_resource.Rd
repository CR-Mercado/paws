% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.mediaconvert_operations.R
\name{untag_resource}
\alias{untag_resource}
\title{Remove tags from a MediaConvert queue, preset, or job template}
\usage{
untag_resource(Arn, TagKeys = NULL)
}
\arguments{
\item{Arn}{[required] The Amazon Resource Name (ARN) of the resource that you want to remove tags from. To get the ARN, send a GET request with the resource name.}

\item{TagKeys}{The keys of the tags that you want to remove from the resource.}
}
\description{
Remove tags from a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
}
\section{Accepted Parameters}{
\preformatted{untag_resource(
  Arn = "string",
  TagKeys = list(
    "string"
  )
)
}
}

