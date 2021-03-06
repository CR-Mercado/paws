% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.connect_operations.R
\name{list_users}
\alias{list_users}
\title{Returns a UserSummaryList, which is an array of UserSummary objects}
\usage{
list_users(InstanceId, NextToken = NULL, MaxResults = NULL)
}
\arguments{
\item{InstanceId}{[required] The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.}

\item{NextToken}{The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.}

\item{MaxResults}{The maximum number of results to return in the response.}
}
\description{
Returns a \code{UserSummaryList}, which is an array of \code{UserSummary} objects.
}
\section{Accepted Parameters}{
\preformatted{list_users(
  InstanceId = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

