% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.storagegateway_operations.R
\name{remove_tags_from_resource}
\alias{remove_tags_from_resource}
\title{Removes one or more tags from the specified resource}
\usage{
remove_tags_from_resource(ResourceARN, TagKeys)
}
\arguments{
\item{ResourceARN}{[required] The Amazon Resource Name (ARN) of the resource you want to remove the tags from.}

\item{TagKeys}{[required] The keys of the tags you want to remove from the specified resource. A tag is composed of a key/value pair.}
}
\description{
Removes one or more tags from the specified resource. This operation is only supported in the cached volume, stored volume and tape gateway types.
}
\section{Accepted Parameters}{
\preformatted{remove_tags_from_resource(
  ResourceARN = "string",
  TagKeys = list(
    "string"
  )
)
}
}

\examples{
# Lists the iSCSI stored volumes of a gateway. Removes one or more tags
# from the specified resource.
\donttest{remove_tags_from_resource(
  ResourceARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B",
  TagKeys = list(
    "Dev Gatgeway Region",
    "East Coast"
  )
)}

}
