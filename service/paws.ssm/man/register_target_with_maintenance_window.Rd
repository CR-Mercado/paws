% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ssm_operations.R
\name{register_target_with_maintenance_window}
\alias{register_target_with_maintenance_window}
\title{Registers a target with a Maintenance Window}
\usage{
register_target_with_maintenance_window(WindowId, ResourceType, Targets,
  OwnerInformation = NULL, Name = NULL, Description = NULL,
  ClientToken = NULL)
}
\arguments{
\item{WindowId}{[required] The ID of the Maintenance Window the target should be registered with.}

\item{ResourceType}{[required] The type of target being registered with the Maintenance Window.}

\item{Targets}{[required] The targets (either instances or tags).

Specify instances using the following format:

\code{Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>}

Specify tags using either of the following formats:

\code{Key=tag:<tag-key>,Values=<tag-value-1>,<tag-value-2>}

\code{Key=tag-key,Values=<tag-key-1>,<tag-key-2>}}

\item{OwnerInformation}{User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this Maintenance Window.}

\item{Name}{An optional name for the target.}

\item{Description}{An optional description for the target.}

\item{ClientToken}{User-provided idempotency token.}
}
\description{
Registers a target with a Maintenance Window.
}
\section{Accepted Parameters}{
\preformatted{register_target_with_maintenance_window(
  WindowId = "string",
  ResourceType = "INSTANCE",
  Targets = list(
    list(
      Key = "string",
      Values = list(
        "string"
      )
    )
  ),
  OwnerInformation = "string",
  Name = "string",
  Description = "string",
  ClientToken = "string"
)
}
}

