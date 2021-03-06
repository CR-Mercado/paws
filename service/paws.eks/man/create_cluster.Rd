% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.eks_operations.R
\name{create_cluster}
\alias{create_cluster}
\title{Creates an Amazon EKS control plane}
\usage{
create_cluster(name, version = NULL, roleArn, resourcesVpcConfig,
  clientRequestToken = NULL)
}
\arguments{
\item{name}{[required] The unique name to give to your cluster.}

\item{version}{The desired Kubernetes version for your cluster. If you do not specify a value here, the latest version available in Amazon EKS is used.}

\item{roleArn}{[required] The Amazon Resource Name (ARN) of the IAM role that provides permissions for Amazon EKS to make calls to other AWS API operations on your behalf. For more information, see \href{http://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html}{Amazon EKS Service IAM Role} in the \strong{Amazon EKS User Guide} .}

\item{resourcesVpcConfig}{[required] The VPC subnets and security groups used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see \href{http://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html}{Cluster VPC Considerations} and \href{http://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html}{Cluster Security Group Considerations} in the \emph{Amazon EKS User Guide}. You must specify at least two subnets. You may specify up to five security groups, but we recommend that you use a dedicated security group for your cluster control plane.}

\item{clientRequestToken}{Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.}
}
\description{
Creates an Amazon EKS control plane.
}
\details{
The Amazon EKS control plane consists of control plane instances that run the Kubernetes software, like \code{etcd} and the API server. The control plane runs in an account managed by AWS, and the Kubernetes API is exposed via the Amazon EKS API server endpoint.

Amazon EKS worker nodes run in your AWS account and connect to your cluster's control plane via the Kubernetes API server endpoint and a certificate file that is created for your cluster.

The cluster control plane is provisioned across multiple Availability Zones and fronted by an Elastic Load Balancing Network Load Balancer. Amazon EKS also provisions elastic network interfaces in your VPC subnets to provide connectivity from the control plane instances to the worker nodes (for example, to support \code{kubectl exec}, \code{logs}, and \code{proxy} data flows).

After you create an Amazon EKS cluster, you must configure your Kubernetes tooling to communicate with the API server and launch worker nodes into your cluster. For more information, see \href{http://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html}{Managing Cluster Authentication} and \href{http://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html}{Launching Amazon EKS Worker Nodes}in the \emph{Amazon EKS User Guide}.
}
\section{Accepted Parameters}{
\preformatted{create_cluster(
  name = "string",
  version = "string",
  roleArn = "string",
  resourcesVpcConfig = list(
    subnetIds = list(
      "string"
    ),
    securityGroupIds = list(
      "string"
    )
  ),
  clientRequestToken = "string"
)
}
}

\examples{
# The following example creates an Amazon EKS cluster called prod.
\donttest{create_cluster(
  version = "1.10",
  name = "prod",
  clientRequestToken = "1d2129a1-3d38-460a-9756-e5b91fddb951",
  resourcesVpcConfig = list(
    securityGroupIds = list(
      "sg-6979fe18"
    ),
    subnetIds = list(
      "subnet-6782e71e",
      "subnet-e7e761ac"
    )
  ),
  roleArn = "arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRoleForAmazonEKS-J7ONKE3BQ4PI"
)}

}
