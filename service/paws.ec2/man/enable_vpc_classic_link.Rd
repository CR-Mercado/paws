% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{enable_vpc_classic_link}
\alias{enable_vpc_classic_link}
\title{Enables a VPC for ClassicLink}
\usage{
enable_vpc_classic_link(DryRun = NULL, VpcId)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{VpcId}{[required] The ID of the VPC.}
}
\description{
Enables a VPC for ClassicLink. You can then link EC2-Classic instances to your ClassicLink-enabled VPC to allow communication over private IP addresses. You cannot enable your VPC for ClassicLink if any of your VPC route tables have existing routes for address ranges within the \code{10.0.0.0/8} IP address range, excluding local routes for VPCs in the \code{10.0.0.0/16} and \code{10.1.0.0/16} IP address ranges. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html}{ClassicLink} in the \emph{Amazon Elastic Compute Cloud User Guide}.
}
\section{Accepted Parameters}{
\preformatted{enable_vpc_classic_link(
  DryRun = TRUE|FALSE,
  VpcId = "string"
)
}
}

