% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.databasemigrationservice_operations.R
\name{refresh_schemas}
\alias{refresh_schemas}
\title{Populates the schema for the specified endpoint}
\usage{
refresh_schemas(EndpointArn, ReplicationInstanceArn)
}
\arguments{
\item{EndpointArn}{[required] The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.}

\item{ReplicationInstanceArn}{[required] The Amazon Resource Name (ARN) of the replication instance.}
}
\description{
Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can check the status of this operation by calling the DescribeRefreshSchemasStatus operation.
}
\section{Accepted Parameters}{
\preformatted{refresh_schemas(
  EndpointArn = "string",
  ReplicationInstanceArn = "string"
)
}
}

\examples{
# Populates the schema for the specified endpoint. This is an asynchronous
# operation and can take several minutes. You can check the status of this
# operation by calling the describe-refresh-schemas-status operation.
\donttest{refresh_schemas(
  EndpointArn = "",
  ReplicationInstanceArn = ""
)}

}
