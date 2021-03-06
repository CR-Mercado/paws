% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.rds_operations.R
\name{delete_db_cluster_endpoint}
\alias{delete_db_cluster_endpoint}
\title{Deletes a custom endpoint and removes it from an Amazon Aurora DB cluster}
\usage{
delete_db_cluster_endpoint(DBClusterEndpointIdentifier)
}
\arguments{
\item{DBClusterEndpointIdentifier}{[required] The identifier associated with the custom endpoint. This parameter is stored as a lowercase string.}
}
\description{
Deletes a custom endpoint and removes it from an Amazon Aurora DB cluster.
}
\section{Accepted Parameters}{
\preformatted{delete_db_cluster_endpoint(
  DBClusterEndpointIdentifier = "string"
)
}
}

