% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.codepipeline_operations.R
\name{create_custom_action_type}
\alias{create_custom_action_type}
\title{Creates a new custom action that can be used in all pipelines associated with the AWS account}
\usage{
create_custom_action_type(category, provider, version, settings = NULL,
  configurationProperties = NULL, inputArtifactDetails,
  outputArtifactDetails)
}
\arguments{
\item{category}{[required] The category of the custom action, such as a build action or a test action.

Although Source and Approval are listed as valid values, they are not currently functional. These values are reserved for future use.}

\item{provider}{[required] The provider of the service used in the custom action, such as AWS CodeDeploy.}

\item{version}{[required] The version identifier of the custom action.}

\item{settings}{Returns information about the settings for an action type.}

\item{configurationProperties}{The configuration properties for the custom action.

You can refer to a name in the configuration properties of the custom action within the URL templates by following the format of {Config:name}, as long as the configuration property is both required and not secret. For more information, see \href{http://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html}{Create a Custom Action for a Pipeline}.}

\item{inputArtifactDetails}{[required] The details of the input artifact for the action, such as its commit ID.}

\item{outputArtifactDetails}{[required] The details of the output artifact of the action, such as its commit ID.}
}
\description{
Creates a new custom action that can be used in all pipelines associated with the AWS account. Only used for custom actions.
}
\section{Accepted Parameters}{
\preformatted{create_custom_action_type(
  category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
  provider = "string",
  version = "string",
  settings = list(
    thirdPartyConfigurationUrl = "string",
    entityUrlTemplate = "string",
    executionUrlTemplate = "string",
    revisionUrlTemplate = "string"
  ),
  configurationProperties = list(
    list(
      name = "string",
      required = TRUE|FALSE,
      key = TRUE|FALSE,
      secret = TRUE|FALSE,
      queryable = TRUE|FALSE,
      description = "string",
      type = "String"|"Number"|"Boolean"
    )
  ),
  inputArtifactDetails = list(
    minimumCount = 123,
    maximumCount = 123
  ),
  outputArtifactDetails = list(
    minimumCount = 123,
    maximumCount = 123
  )
)
}
}

