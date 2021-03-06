% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.codebuild_operations.R
\name{update_project}
\alias{update_project}
\title{Changes the settings of a build project}
\usage{
update_project(name, description = NULL, source = NULL,
  secondarySources = NULL, artifacts = NULL,
  secondaryArtifacts = NULL, cache = NULL, environment = NULL,
  serviceRole = NULL, timeoutInMinutes = NULL,
  queuedTimeoutInMinutes = NULL, encryptionKey = NULL, tags = NULL,
  vpcConfig = NULL, badgeEnabled = NULL, logsConfig = NULL)
}
\arguments{
\item{name}{[required] The name of the build project.

You cannot change a build project's name.}

\item{description}{A new or replacement description of the build project.}

\item{source}{Information to be changed about the build input source code for the build project.}

\item{secondarySources}{An array of \code{ProjectSource} objects.}

\item{artifacts}{Information to be changed about the build output artifacts for the build project.}

\item{secondaryArtifacts}{An array of \code{ProjectSource} objects.}

\item{cache}{Stores recently used information so that it can be quickly accessed at a later time.}

\item{environment}{Information to be changed about the build environment for the build project.}

\item{serviceRole}{The replacement ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.}

\item{timeoutInMinutes}{The replacement value in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed.}

\item{queuedTimeoutInMinutes}{The number of minutes a build is allowed to be queued before it times out.}

\item{encryptionKey}{The replacement AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.

You can specify either the Amazon Resource Name (ARN)of the CMK or, if available, the CMK's alias (using the format \code{alias/alias-name alias-name }).}

\item{tags}{The replacement set of tags for this build project.

These tags are available for use by AWS services that support AWS CodeBuild build project tags.}

\item{vpcConfig}{VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.}

\item{badgeEnabled}{Set this to true to generate a publicly accessible URL for your project's build badge.}

\item{logsConfig}{Information about logs for the build project. A project can create logs in Amazon CloudWatch Logs, logs in an S3 bucket, or both.}
}
\description{
Changes the settings of a build project.
}
\section{Accepted Parameters}{
\preformatted{update_project(
  name = "string",
  description = "string",
  source = list(
    type = "CODECOMMIT"|"CODEPIPELINE"|"GITHUB"|"S3"|"BITBUCKET"|"GITHUB_ENTERPRISE"|"NO_SOURCE",
    location = "string",
    gitCloneDepth = 123,
    buildspec = "string",
    auth = list(
      type = "OAUTH",
      resource = "string"
    ),
    reportBuildStatus = TRUE|FALSE,
    insecureSsl = TRUE|FALSE,
    sourceIdentifier = "string"
  ),
  secondarySources = list(
    list(
      type = "CODECOMMIT"|"CODEPIPELINE"|"GITHUB"|"S3"|"BITBUCKET"|"GITHUB_ENTERPRISE"|"NO_SOURCE",
      location = "string",
      gitCloneDepth = 123,
      buildspec = "string",
      auth = list(
        type = "OAUTH",
        resource = "string"
      ),
      reportBuildStatus = TRUE|FALSE,
      insecureSsl = TRUE|FALSE,
      sourceIdentifier = "string"
    )
  ),
  artifacts = list(
    type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
    location = "string",
    path = "string",
    namespaceType = "NONE"|"BUILD_ID",
    name = "string",
    packaging = "NONE"|"ZIP",
    overrideArtifactName = TRUE|FALSE,
    encryptionDisabled = TRUE|FALSE,
    artifactIdentifier = "string"
  ),
  secondaryArtifacts = list(
    list(
      type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
      location = "string",
      path = "string",
      namespaceType = "NONE"|"BUILD_ID",
      name = "string",
      packaging = "NONE"|"ZIP",
      overrideArtifactName = TRUE|FALSE,
      encryptionDisabled = TRUE|FALSE,
      artifactIdentifier = "string"
    )
  ),
  cache = list(
    type = "NO_CACHE"|"S3",
    location = "string"
  ),
  environment = list(
    type = "WINDOWS_CONTAINER"|"LINUX_CONTAINER",
    image = "string",
    computeType = "BUILD_GENERAL1_SMALL"|"BUILD_GENERAL1_MEDIUM"|"BUILD_GENERAL1_LARGE",
    environmentVariables = list(
      list(
        name = "string",
        value = "string",
        type = "PLAINTEXT"|"PARAMETER_STORE"
      )
    ),
    privilegedMode = TRUE|FALSE,
    certificate = "string",
    registryCredential = list(
      credential = "string",
      credentialProvider = "SECRETS_MANAGER"
    ),
    imagePullCredentialsType = "CODEBUILD"|"SERVICE_ROLE"
  ),
  serviceRole = "string",
  timeoutInMinutes = 123,
  queuedTimeoutInMinutes = 123,
  encryptionKey = "string",
  tags = list(
    list(
      key = "string",
      value = "string"
    )
  ),
  vpcConfig = list(
    vpcId = "string",
    subnets = list(
      "string"
    ),
    securityGroupIds = list(
      "string"
    )
  ),
  badgeEnabled = TRUE|FALSE,
  logsConfig = list(
    cloudWatchLogs = list(
      status = "ENABLED"|"DISABLED",
      groupName = "string",
      streamName = "string"
    ),
    s3Logs = list(
      status = "ENABLED"|"DISABLED",
      location = "string"
    )
  )
)
}
}

