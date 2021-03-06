% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{create_default_subnet}
\alias{create_default_subnet}
\title{Creates a default subnet with a size /20 IPv4 CIDR block in the specified Availability Zone in your default VPC}
\usage{
create_default_subnet(AvailabilityZone, DryRun = NULL)
}
\arguments{
\item{AvailabilityZone}{[required] The Availability Zone in which to create the default subnet.}

\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Creates a default subnet with a size \code{/20} IPv4 CIDR block in the specified Availability Zone in your default VPC. You can have only one default subnet per Availability Zone. For more information, see \href{https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html#create-default-subnet}{Creating a Default Subnet} in the \emph{Amazon Virtual Private Cloud User Guide}.
}
\section{Accepted Parameters}{
\preformatted{create_default_subnet(
  AvailabilityZone = "string",
  DryRun = TRUE|FALSE
)
}
}

