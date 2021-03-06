% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{associate_route_table}
\alias{associate_route_table}
\title{Associates a subnet with a route table}
\usage{
associate_route_table(DryRun = NULL, RouteTableId, SubnetId)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{RouteTableId}{[required] The ID of the route table.}

\item{SubnetId}{[required] The ID of the subnet.}
}
\description{
Associates a subnet with a route table. The subnet and route table must be in the same VPC. This association causes traffic originating from the subnet to be routed according to the routes in the route table. The action returns an association ID, which you need in order to disassociate the route table from the subnet later. A route table can be associated with multiple subnets.
}
\details{
For more information, see \href{https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html}{Route Tables} in the \emph{Amazon Virtual Private Cloud User Guide}.
}
\section{Accepted Parameters}{
\preformatted{associate_route_table(
  DryRun = TRUE|FALSE,
  RouteTableId = "string",
  SubnetId = "string"
)
}
}

\examples{
# This example associates the specified route table with the specified
# subnet.
\donttest{associate_route_table(
  RouteTableId = "rtb-22574640",
  SubnetId = "subnet-9d4a7b6"
)}

}
