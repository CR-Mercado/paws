% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.databasemigrationservice_operations.R
\name{describe_schemas}
\alias{describe_schemas}
\title{Returns information about the schema for the specified endpoint}
\usage{
describe_schemas(EndpointArn, MaxRecords = NULL, Marker = NULL)
}
\arguments{
\item{EndpointArn}{[required] The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.}

\item{MaxRecords}{The maximum number of records to include in the response. If more records exist than the specified \code{MaxRecords} value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.}

\item{Marker}{An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by \code{MaxRecords}.}
}
\description{
Returns information about the schema for the specified endpoint.
}
\section{Accepted Parameters}{
\preformatted{describe_schemas(
  EndpointArn = "string",
  MaxRecords = 123,
  Marker = "string"
)
}
}

\examples{
# Returns information about the schema for the specified endpoint.
\donttest{describe_schemas(
  EndpointArn = "",
  Marker = "",
  MaxRecords = 123L
)}

}
