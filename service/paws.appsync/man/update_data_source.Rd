% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.appsync_operations.R
\name{update_data_source}
\alias{update_data_source}
\title{Updates a DataSource object}
\usage{
update_data_source(apiId, name, description = NULL, type,
  serviceRoleArn = NULL, dynamodbConfig = NULL, lambdaConfig = NULL,
  elasticsearchConfig = NULL, httpConfig = NULL,
  relationalDatabaseConfig = NULL)
}
\arguments{
\item{apiId}{[required] The API ID.}

\item{name}{[required] The new name for the data source.}

\item{description}{The new description for the data source.}

\item{type}{[required] The new data source type.}

\item{serviceRoleArn}{The new service role ARN for the data source.}

\item{dynamodbConfig}{The new Amazon DynamoDB configuration.}

\item{lambdaConfig}{The new AWS Lambda configuration.}

\item{elasticsearchConfig}{The new Elasticsearch Service configuration.}

\item{httpConfig}{The new HTTP endpoint configuration.}

\item{relationalDatabaseConfig}{The new relational database configuration.}
}
\description{
Updates a \code{DataSource} object.
}
\section{Accepted Parameters}{
\preformatted{update_data_source(
  apiId = "string",
  name = "string",
  description = "string",
  type = "AWS_LAMBDA"|"AMAZON_DYNAMODB"|"AMAZON_ELASTICSEARCH"|"NONE"|"HTTP"|"RELATIONAL_DATABASE",
  serviceRoleArn = "string",
  dynamodbConfig = list(
    tableName = "string",
    awsRegion = "string",
    useCallerCredentials = TRUE|FALSE
  ),
  lambdaConfig = list(
    lambdaFunctionArn = "string"
  ),
  elasticsearchConfig = list(
    endpoint = "string",
    awsRegion = "string"
  ),
  httpConfig = list(
    endpoint = "string",
    authorizationConfig = list(
      authorizationType = "AWS_IAM",
      awsIamConfig = list(
        signingRegion = "string",
        signingServiceName = "string"
      )
    )
  ),
  relationalDatabaseConfig = list(
    relationalDatabaseSourceType = "RDS_HTTP_ENDPOINT",
    rdsHttpEndpointConfig = list(
      awsRegion = "string",
      dbClusterIdentifier = "string",
      databaseName = "string",
      schema = "string",
      awsSecretStoreArn = "string"
    )
  )
)
}
}

