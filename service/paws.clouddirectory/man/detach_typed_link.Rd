% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.clouddirectory_operations.R
\name{detach_typed_link}
\alias{detach_typed_link}
\title{Detaches a typed link from a specified source and target object}
\usage{
detach_typed_link(DirectoryArn, TypedLinkSpecifier)
}
\arguments{
\item{DirectoryArn}{[required] The Amazon Resource Name (ARN) of the directory where you want to detach the typed link.}

\item{TypedLinkSpecifier}{[required] Used to accept a typed link specifier as input.}
}
\description{
Detaches a typed link from a specified source and target object. For more information, see \href{https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink}{Typed Links}.
}
\section{Accepted Parameters}{
\preformatted{detach_typed_link(
  DirectoryArn = "string",
  TypedLinkSpecifier = list(
    TypedLinkFacet = list(
      SchemaArn = "string",
      TypedLinkName = "string"
    ),
    SourceObjectReference = list(
      Selector = "string"
    ),
    TargetObjectReference = list(
      Selector = "string"
    ),
    IdentityAttributeValues = list(
      list(
        AttributeName = "string",
        Value = list(
          StringValue = "string",
          BinaryValue = raw,
          BooleanValue = TRUE|FALSE,
          NumberValue = "string",
          DatetimeValue = as.POSIXct("2015-01-01")
        )
      )
    )
  )
)
}
}

