% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.mediaconnect_operations.R
\name{create_flow}
\alias{create_flow}
\title{Creates a new flow}
\usage{
create_flow(AvailabilityZone = NULL, Entitlements = NULL, Name,
  Outputs = NULL, Source)
}
\arguments{
\item{AvailabilityZone}{The Availability Zone that you want to create the flow in. These options are limited to the Availability Zones within the current AWS Region.}

\item{Entitlements}{The entitlements that you want to grant on a flow.}

\item{Name}{[required] The name of the flow.}

\item{Outputs}{The outputs that you want to add to this flow.}

\item{Source}{[required]}
}
\description{
Creates a new flow. The request must include one source. The request optionally can include outputs (up to 20) and entitlements (up to 50).
}
\section{Accepted Parameters}{
\preformatted{create_flow(
  AvailabilityZone = "string",
  Entitlements = list(
    list(
      Description = "string",
      Encryption = list(
        Algorithm = "aes128"|"aes192"|"aes256",
        KeyType = "static-key",
        RoleArn = "string",
        SecretArn = "string"
      ),
      Name = "string",
      Subscribers = list(
        "string"
      )
    )
  ),
  Name = "string",
  Outputs = list(
    list(
      Description = "string",
      Destination = "string",
      Encryption = list(
        Algorithm = "aes128"|"aes192"|"aes256",
        KeyType = "static-key",
        RoleArn = "string",
        SecretArn = "string"
      ),
      MaxLatency = 123,
      Name = "string",
      Port = 123,
      Protocol = "zixi-push"|"rtp-fec"|"rtp",
      SmoothingLatency = 123,
      StreamId = "string"
    )
  ),
  Source = list(
    Decryption = list(
      Algorithm = "aes128"|"aes192"|"aes256",
      KeyType = "static-key",
      RoleArn = "string",
      SecretArn = "string"
    ),
    Description = "string",
    EntitlementArn = "string",
    IngestPort = 123,
    MaxBitrate = 123,
    MaxLatency = 123,
    Name = "string",
    Protocol = "zixi-push"|"rtp-fec"|"rtp",
    StreamId = "string",
    WhitelistCidr = "string"
  )
)
}
}

