% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.codepipeline_operations.R
\name{update_pipeline}
\alias{update_pipeline}
\title{Updates a specified pipeline with edits or changes to its structure}
\usage{
update_pipeline(pipeline)
}
\arguments{
\item{pipeline}{[required] The name of the pipeline to be updated.}
}
\description{
Updates a specified pipeline with edits or changes to its structure. Use a JSON file with the pipeline structure in conjunction with UpdatePipeline to provide the full structure of the pipeline. Updating the pipeline increases the version number of the pipeline by 1.
}
\section{Accepted Parameters}{
\preformatted{update_pipeline(
  pipeline = list(
    name = "string",
    roleArn = "string",
    artifactStore = list(
      type = "S3",
      location = "string",
      encryptionKey = list(
        id = "string",
        type = "KMS"
      )
    ),
    artifactStores = list(
      list(
        type = "S3",
        location = "string",
        encryptionKey = list(
          id = "string",
          type = "KMS"
        )
      )
    ),
    stages = list(
      list(
        name = "string",
        blockers = list(
          list(
            name = "string",
            type = "Schedule"
          )
        ),
        actions = list(
          list(
            name = "string",
            actionTypeId = list(
              category = "Source"|"Build"|"Deploy"|"Test"|"Invoke"|"Approval",
              owner = "AWS"|"ThirdParty"|"Custom",
              provider = "string",
              version = "string"
            ),
            runOrder = 123,
            configuration = list(
              "string"
            ),
            outputArtifacts = list(
              list(
                name = "string"
              )
            ),
            inputArtifacts = list(
              list(
                name = "string"
              )
            ),
            roleArn = "string",
            region = "string"
          )
        )
      )
    ),
    version = 123
  )
)
}
}

