% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.quicksight_operations.R
\name{delete_group}
\alias{delete_group}
\title{Removes a user group from Amazon QuickSight}
\usage{
delete_group(GroupName, AwsAccountId, Namespace)
}
\arguments{
\item{GroupName}{[required] The name of the group that you want to delete.}

\item{AwsAccountId}{[required] The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.}

\item{Namespace}{[required] The namespace. Currently, you should set this to \code{default}.}
}
\description{
Removes a user group from Amazon QuickSight.
}
\details{
The permissions resource is \code{arn:aws:quicksight:us-east-1:<aws-account-id>:group/default/<group-name> <aws-account-id>:group/default/<group-name> }.

\strong{CLI Sample:}

\code{aws quicksight delete-group -\-aws-account-id=111122223333 -\-namespace=default -\-group-name=Sales-Management }
}
\section{Accepted Parameters}{
\preformatted{delete_group(
  GroupName = "string",
  AwsAccountId = "string",
  Namespace = "string"
)
}
}

