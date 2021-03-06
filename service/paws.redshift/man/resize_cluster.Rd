% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.redshift_operations.R
\name{resize_cluster}
\alias{resize_cluster}
\title{Changes the size of the cluster}
\usage{
resize_cluster(ClusterIdentifier, ClusterType = NULL, NodeType = NULL,
  NumberOfNodes, Classic = NULL)
}
\arguments{
\item{ClusterIdentifier}{[required] The unique identifier for the cluster to resize.}

\item{ClusterType}{The new cluster type for the specified cluster.}

\item{NodeType}{The new node type for the nodes you are adding.}

\item{NumberOfNodes}{[required] The new number of nodes for the cluster.}

\item{Classic}{A boolean value indicating whether the resize operation is using the classic resize process. If you don't provide this parameter or set the value to \code{false}, the resize type is elastic.}
}
\description{
Changes the size of the cluster. You can change the cluster's type, or change the number or type of nodes. The default behavior is to use the elastic resize method. With an elastic resize, your cluster is available for read and write operations more quickly than with the classic resize method.
}
\details{
Elastic resize operations have the following restrictions:
\itemize{
\item You can only resize clusters of the following types:
\item dc2.large
\item dc2.8xlarge
\item ds2.xlarge
\item ds2.8xlarge
\item The type of nodes that you add must match the node type for the cluster.
}
}
\section{Accepted Parameters}{
\preformatted{resize_cluster(
  ClusterIdentifier = "string",
  ClusterType = "string",
  NodeType = "string",
  NumberOfNodes = 123,
  Classic = TRUE|FALSE
)
}
}

