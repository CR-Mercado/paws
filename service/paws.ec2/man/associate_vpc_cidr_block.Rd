% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{associate_vpc_cidr_block}
\alias{associate_vpc_cidr_block}
\title{Associates a CIDR block with your VPC}
\usage{
associate_vpc_cidr_block(AmazonProvidedIpv6CidrBlock = NULL,
  CidrBlock = NULL, VpcId)
}
\arguments{
\item{AmazonProvidedIpv6CidrBlock}{Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block.}

\item{CidrBlock}{An IPv4 CIDR block to associate with the VPC.}

\item{VpcId}{[required] The ID of the VPC.}
}
\description{
Associates a CIDR block with your VPC. You can associate a secondary IPv4 CIDR block, or you can associate an Amazon-provided IPv6 CIDR block. The IPv6 CIDR block size is fixed at /56.
}
\details{
For more information about associating CIDR blocks with your VPC and applicable restrictions, see \href{https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html#VPC_Sizing}{VPC and Subnet Sizing} in the \emph{Amazon Virtual Private Cloud User Guide}.
}
\section{Accepted Parameters}{
\preformatted{associate_vpc_cidr_block(
  AmazonProvidedIpv6CidrBlock = TRUE|FALSE,
  CidrBlock = "string",
  VpcId = "string"
)
}
}

