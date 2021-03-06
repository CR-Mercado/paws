% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{describe_fpga_images}
\alias{describe_fpga_images}
\title{Describes one or more available Amazon FPGA Images (AFIs)}
\usage{
describe_fpga_images(DryRun = NULL, FpgaImageIds = NULL,
  Owners = NULL, Filters = NULL, NextToken = NULL,
  MaxResults = NULL)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{FpgaImageIds}{One or more AFI IDs.}

\item{Owners}{Filters the AFI by owner. Specify an AWS account ID, \code{self} (owner is the sender of the request), or an AWS owner alias (valid values are \code{amazon} | \code{aws-marketplace}).}

\item{Filters}{One or more filters.
\itemize{
\item \code{create-time} - The creation time of the AFI.
\item \code{fpga-image-id} - The FPGA image identifier (AFI ID).
\item \code{fpga-image-global-id} - The global FPGA image identifier (AGFI ID).
\item \code{name} - The name of the AFI.
\item \code{owner-id} - The AWS account ID of the AFI owner.
\item \code{product-code} - The product code.
\item \code{shell-version} - The version of the AWS Shell that was used to create the bitstream.
\item \code{state} - The state of the AFI (\code{pending} | \code{failed} | \code{available} | \code{unavailable}).
\item \code{tag}:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key \code{Owner} and the value \code{TeamA}, specify \code{tag:Owner} for the filter name and \code{TeamA} for the filter value.
\item \code{tag-key} - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
\item \code{update-time} - The time of the most recent update.
}}

\item{NextToken}{The token to retrieve the next page of results.}

\item{MaxResults}{The maximum number of results to return in a single call.}
}
\description{
Describes one or more available Amazon FPGA Images (AFIs). These include public AFIs, private AFIs that you own, and AFIs owned by other AWS accounts for which you have load permissions.
}
\section{Accepted Parameters}{
\preformatted{describe_fpga_images(
  DryRun = TRUE|FALSE,
  FpgaImageIds = list(
    "string"
  ),
  Owners = list(
    "string"
  ),
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  ),
  NextToken = "string",
  MaxResults = 123
)
}
}

