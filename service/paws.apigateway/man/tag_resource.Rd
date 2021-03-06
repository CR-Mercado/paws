% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.apigateway_operations.R
\name{tag_resource}
\alias{tag_resource}
\title{Adds or updates a tag on a given resource}
\usage{
tag_resource(resourceArn, tags)
}
\arguments{
\item{resourceArn}{[required] [Required] The ARN of a resource that can be tagged. The resource ARN must be URL-encoded. At present, Stage is the only taggable resource.}

\item{tags}{[required] [Required] The key-value map of strings. The valid character set is [a-zA-Z+-=.\_:/]. The tag key can be up to 128 characters and must not start with \code{aws:}. The tag value can be up to 256 characters.}
}
\description{
Adds or updates a tag on a given resource.
}
\section{Accepted Parameters}{
\preformatted{tag_resource(
  resourceArn = "string",
  tags = list(
    "string"
  )
)
}
}

