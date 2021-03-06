% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.appstream_operations.R
\name{list_tags_for_resource}
\alias{list_tags_for_resource}
\title{Retrieves a list of all tags for the specified AppStream 2}
\usage{
list_tags_for_resource(ResourceArn)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) of the resource.}
}
\description{
Retrieves a list of all tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks.
}
\details{
For more information about tags, see \href{http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html}{Tagging Your Resources} in the \emph{Amazon AppStream 2.0 Developer Guide}.
}
\section{Accepted Parameters}{
\preformatted{list_tags_for_resource(
  ResourceArn = "string"
)
}
}

