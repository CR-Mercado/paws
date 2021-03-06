% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.rds_operations.R
\name{modify_global_cluster}
\alias{modify_global_cluster}
\title{Modify a setting for an Amazon Aurora global cluster}
\usage{
modify_global_cluster(GlobalClusterIdentifier = NULL,
  NewGlobalClusterIdentifier = NULL, DeletionProtection = NULL)
}
\arguments{
\item{GlobalClusterIdentifier}{The DB cluster identifier for the global cluster being modified. This parameter is not case-sensitive.

Constraints:
\itemize{
\item Must match the identifier of an existing global database cluster.
}}

\item{NewGlobalClusterIdentifier}{The new cluster identifier for the global database cluster when modifying a global database cluster. This value is stored as a lowercase string.

Constraints:
\itemize{
\item Must contain from 1 to 63 letters, numbers, or hyphens
\item The first character must be a letter
\item Can't end with a hyphen or contain two consecutive hyphens
}

Example: \code{my-cluster2}}

\item{DeletionProtection}{Indicates if the global database cluster has deletion protection enabled. The global database cluster can't be deleted when this value is set to true.}
}
\description{
Modify a setting for an Amazon Aurora global cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. For more information on Amazon Aurora, see \href{http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html}{What Is Amazon Aurora?} in the \emph{Amazon Aurora User Guide.}
}
\section{Accepted Parameters}{
\preformatted{modify_global_cluster(
  GlobalClusterIdentifier = "string",
  NewGlobalClusterIdentifier = "string",
  DeletionProtection = TRUE|FALSE
)
}
}

