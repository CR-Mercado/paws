% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ssm_operations.R
\name{create_association}
\alias{create_association}
\title{Associates the specified Systems Manager document with the specified instances or targets}
\usage{
create_association(Name, DocumentVersion = NULL, InstanceId = NULL,
  Parameters = NULL, Targets = NULL, ScheduleExpression = NULL,
  OutputLocation = NULL, AssociationName = NULL,
  AutomationTargetParameterName = NULL, MaxErrors = NULL,
  MaxConcurrency = NULL, ComplianceSeverity = NULL)
}
\arguments{
\item{Name}{[required] The name of the Systems Manager document.}

\item{DocumentVersion}{The document version you want to associate with the target(s). Can be a specific version or the default version.}

\item{InstanceId}{The instance ID.}

\item{Parameters}{The parameters for the documents runtime configuration.}

\item{Targets}{The targets (either instances or tags) for the association.}

\item{ScheduleExpression}{A cron expression when the association will be applied to the target(s).}

\item{OutputLocation}{An Amazon S3 bucket where you want to store the output details of the request.}

\item{AssociationName}{Specify a descriptive name for the association.}

\item{AutomationTargetParameterName}{Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.}

\item{MaxErrors}{The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received.

Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.}

\item{MaxConcurrency}{The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time.

If a new instance starts and attempts to execute an association while Systems Manager is executing MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.}

\item{ComplianceSeverity}{The severity level to assign to the association.}
}
\description{
Associates the specified Systems Manager document with the specified instances or targets.
}
\details{
When you associate a document with one or more instances using instance IDs or tags, SSM Agent running on the instance processes the document and configures the instance as specified.

If you associate a document with an instance that already has an associated document, the system returns the AssociationAlreadyExists exception.
}
\section{Accepted Parameters}{
\preformatted{create_association(
  Name = "string",
  DocumentVersion = "string",
  InstanceId = "string",
  Parameters = list(
    list(
      "string"
    )
  ),
  Targets = list(
    list(
      Key = "string",
      Values = list(
        "string"
      )
    )
  ),
  ScheduleExpression = "string",
  OutputLocation = list(
    S3Location = list(
      OutputS3Region = "string",
      OutputS3BucketName = "string",
      OutputS3KeyPrefix = "string"
    )
  ),
  AssociationName = "string",
  AutomationTargetParameterName = "string",
  MaxErrors = "string",
  MaxConcurrency = "string",
  ComplianceSeverity = "CRITICAL"|"HIGH"|"MEDIUM"|"LOW"|"UNSPECIFIED"
)
}
}

