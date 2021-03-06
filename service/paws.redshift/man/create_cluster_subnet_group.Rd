% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.redshift_operations.R
\name{create_cluster_subnet_group}
\alias{create_cluster_subnet_group}
\title{Creates a new Amazon Redshift subnet group}
\usage{
create_cluster_subnet_group(ClusterSubnetGroupName, Description, SubnetIds,
  Tags = NULL)
}
\arguments{
\item{ClusterSubnetGroupName}{[required] The name for the subnet group. Amazon Redshift stores the value as a lowercase string.

Constraints:
\itemize{
\item Must contain no more than 255 alphanumeric characters or hyphens.
\item Must not be "Default".
\item Must be unique for all subnet groups that are created by your AWS account.
}

Example: \code{examplesubnetgroup}}

\item{Description}{[required] A description for the subnet group.}

\item{SubnetIds}{[required] An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.}

\item{Tags}{A list of tag instances.}
}
\description{
Creates a new Amazon Redshift subnet group. You must provide a list of one or more subnets in your existing Amazon Virtual Private Cloud (Amazon VPC) when creating Amazon Redshift subnet group.
}
\details{
For information about subnet groups, go to \href{http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html}{Amazon Redshift Cluster Subnet Groups} in the \emph{Amazon Redshift Cluster Management Guide}.
}
\section{Accepted Parameters}{
\preformatted{create_cluster_subnet_group(
  ClusterSubnetGroupName = "string",
  Description = "string",
  SubnetIds = list(
    "string"
  ),
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

