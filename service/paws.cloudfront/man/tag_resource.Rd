% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudfront_operations.R
\name{tag_resource}
\alias{tag_resource}
\title{Add tags to a CloudFront resource}
\usage{
tag_resource(Resource, Tags)
}
\arguments{
\item{Resource}{[required] An ARN of a CloudFront resource.}

\item{Tags}{[required] A complex type that contains zero or more \code{Tag} elements.}
}
\description{
Add tags to a CloudFront resource.
}
\section{Accepted Parameters}{
\preformatted{tag_resource(
  Resource = "string",
  Tags = list(
    Items = list(
      list(
        Key = "string",
        Value = "string"
      )
    )
  )
)
}
}

