% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.kinesisanalytics_operations.R
\name{update_application}
\alias{update_application}
\title{Updates an existing Amazon Kinesis Analytics application}
\usage{
update_application(ApplicationName, CurrentApplicationVersionId,
  ApplicationUpdate)
}
\arguments{
\item{ApplicationName}{[required] Name of the Amazon Kinesis Analytics application to update.}

\item{CurrentApplicationVersionId}{[required] The current application version ID. You can use the DescribeApplication operation to get this value.}

\item{ApplicationUpdate}{[required] Describes application updates.}
}
\description{
Updates an existing Amazon Kinesis Analytics application. Using this API, you can update application code, input configuration, and output configuration.
}
\details{
Note that Amazon Kinesis Analytics updates the \code{CurrentApplicationVersionId} each time you update your application.

This operation requires permission for the \code{kinesisanalytics:UpdateApplication} action.
}
\section{Accepted Parameters}{
\preformatted{update_application(
  ApplicationName = "string",
  CurrentApplicationVersionId = 123,
  ApplicationUpdate = list(
    InputUpdates = list(
      list(
        InputId = "string",
        NamePrefixUpdate = "string",
        InputProcessingConfigurationUpdate = list(
          InputLambdaProcessorUpdate = list(
            ResourceARNUpdate = "string",
            RoleARNUpdate = "string"
          )
        ),
        KinesisStreamsInputUpdate = list(
          ResourceARNUpdate = "string",
          RoleARNUpdate = "string"
        ),
        KinesisFirehoseInputUpdate = list(
          ResourceARNUpdate = "string",
          RoleARNUpdate = "string"
        ),
        InputSchemaUpdate = list(
          RecordFormatUpdate = list(
            RecordFormatType = "JSON"|"CSV",
            MappingParameters = list(
              JSONMappingParameters = list(
                RecordRowPath = "string"
              ),
              CSVMappingParameters = list(
                RecordRowDelimiter = "string",
                RecordColumnDelimiter = "string"
              )
            )
          ),
          RecordEncodingUpdate = "string",
          RecordColumnUpdates = list(
            list(
              Name = "string",
              Mapping = "string",
              SqlType = "string"
            )
          )
        ),
        InputParallelismUpdate = list(
          CountUpdate = 123
        )
      )
    ),
    ApplicationCodeUpdate = "string",
    OutputUpdates = list(
      list(
        OutputId = "string",
        NameUpdate = "string",
        KinesisStreamsOutputUpdate = list(
          ResourceARNUpdate = "string",
          RoleARNUpdate = "string"
        ),
        KinesisFirehoseOutputUpdate = list(
          ResourceARNUpdate = "string",
          RoleARNUpdate = "string"
        ),
        LambdaOutputUpdate = list(
          ResourceARNUpdate = "string",
          RoleARNUpdate = "string"
        ),
        DestinationSchemaUpdate = list(
          RecordFormatType = "JSON"|"CSV"
        )
      )
    ),
    ReferenceDataSourceUpdates = list(
      list(
        ReferenceId = "string",
        TableNameUpdate = "string",
        S3ReferenceDataSourceUpdate = list(
          BucketARNUpdate = "string",
          FileKeyUpdate = "string",
          ReferenceRoleARNUpdate = "string"
        ),
        ReferenceSchemaUpdate = list(
          RecordFormat = list(
            RecordFormatType = "JSON"|"CSV",
            MappingParameters = list(
              JSONMappingParameters = list(
                RecordRowPath = "string"
              ),
              CSVMappingParameters = list(
                RecordRowDelimiter = "string",
                RecordColumnDelimiter = "string"
              )
            )
          ),
          RecordEncoding = "string",
          RecordColumns = list(
            list(
              Name = "string",
              Mapping = "string",
              SqlType = "string"
            )
          )
        )
      )
    ),
    CloudWatchLoggingOptionUpdates = list(
      list(
        CloudWatchLoggingOptionId = "string",
        LogStreamARNUpdate = "string",
        RoleARNUpdate = "string"
      )
    )
  )
)
}
}

