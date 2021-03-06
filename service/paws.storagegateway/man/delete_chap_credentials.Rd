% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.storagegateway_operations.R
\name{delete_chap_credentials}
\alias{delete_chap_credentials}
\title{Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target and initiator pair}
\usage{
delete_chap_credentials(TargetARN, InitiatorName)
}
\arguments{
\item{TargetARN}{[required] The Amazon Resource Name (ARN) of the iSCSI volume target. Use the DescribeStorediSCSIVolumes operation to return to retrieve the TargetARN for specified VolumeARN.}

\item{InitiatorName}{[required] The iSCSI initiator that connects to the target.}
}
\description{
Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target and initiator pair.
}
\section{Accepted Parameters}{
\preformatted{delete_chap_credentials(
  TargetARN = "string",
  InitiatorName = "string"
)
}
}

\examples{
# Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials
# for a specified iSCSI target and initiator pair.
\donttest{delete_chap_credentials(
  InitiatorName = "iqn.1991-05.com.microsoft:computername.domain.example.com",
  TargetARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
)}

}
