% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.glue_operations.R
\name{get_dev_endpoints}
\alias{get_dev_endpoints}
\title{Retrieves all the DevEndpoints in this AWS account}
\usage{
get_dev_endpoints(MaxResults = NULL, NextToken = NULL)
}
\arguments{
\item{MaxResults}{The maximum size of information to return.}

\item{NextToken}{A continuation token, if this is a continuation call.}
}
\description{
Retrieves all the DevEndpoints in this AWS account.
}
\details{
When you create a development endpoint in a virtual private cloud (VPC), AWS Glue returns only a private IP address and the public IP address field is not populated. When you create a non-VPC development endpoint, AWS Glue returns only a public IP address.
}
\section{Accepted Parameters}{
\preformatted{get_dev_endpoints(
  MaxResults = 123,
  NextToken = "string"
)
}
}

