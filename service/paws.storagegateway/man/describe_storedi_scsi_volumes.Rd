% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.storagegateway_operations.R
\name{describe_storedi_scsi_volumes}
\alias{describe_storedi_scsi_volumes}
\title{Returns the description of the gateway volumes specified in the request}
\usage{
describe_storedi_scsi_volumes(VolumeARNs)
}
\arguments{
\item{VolumeARNs}{[required] An array of strings where each string represents the Amazon Resource Name (ARN) of a stored volume. All of the specified stored volumes must from the same gateway. Use ListVolumes to get volume ARNs for a gateway.}
}
\description{
Returns the description of the gateway volumes specified in the request. The list of gateway volumes in the request must be from one gateway. In the response Amazon Storage Gateway returns volume information sorted by volume ARNs. This operation is only supported in stored volume gateway type.
}
\section{Accepted Parameters}{
\preformatted{describe_storedi_scsi_volumes(
  VolumeARNs = list(
    "string"
  )
)
}
}

\examples{
# Returns the description of the gateway volumes specified in the request
# belonging to the same gateway.
\donttest{describe_storedi_scsi_volumes(
  VolumeARNs = list(
    "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
  )
)}

}
