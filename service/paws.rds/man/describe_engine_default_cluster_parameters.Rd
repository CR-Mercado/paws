% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.rds_operations.R
\name{describe_engine_default_cluster_parameters}
\alias{describe_engine_default_cluster_parameters}
\title{Returns the default engine and system parameter information for the cluster database engine}
\usage{
describe_engine_default_cluster_parameters(DBParameterGroupFamily,
  Filters = NULL, MaxRecords = NULL, Marker = NULL)
}
\arguments{
\item{DBParameterGroupFamily}{[required] The name of the DB cluster parameter group family to return engine parameter information for.}

\item{Filters}{This parameter is not currently supported.}

\item{MaxRecords}{The maximum number of records to include in the response. If more records exist than the specified \code{MaxRecords} value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.}

\item{Marker}{An optional pagination token provided by a previous \code{DescribeEngineDefaultClusterParameters} request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by \code{MaxRecords}.}
}
\description{
Returns the default engine and system parameter information for the cluster database engine.
}
\details{
For more information on Amazon Aurora, see \href{http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html}{What Is Amazon Aurora?} in the \emph{Amazon Aurora User Guide.}
}
\section{Accepted Parameters}{
\preformatted{describe_engine_default_cluster_parameters(
  DBParameterGroupFamily = "string",
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  ),
  MaxRecords = 123,
  Marker = "string"
)
}
}

