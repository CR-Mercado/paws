% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudformation_operations.R
\name{describe_stacks}
\alias{describe_stacks}
\title{Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created}
\usage{
describe_stacks(StackName = NULL, NextToken = NULL)
}
\arguments{
\item{StackName}{The name or the unique stack ID that is associated with the stack, which are not always interchangeable:
\itemize{
\item Running stacks: You can specify either the stack's name or its unique stack ID.
\item Deleted stacks: You must specify the unique stack ID.
}

Default: There is no default value.}

\item{NextToken}{A string that identifies the next page of stacks that you want to retrieve.}
}
\description{
Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.
}
\details{
If the stack does not exist, an \code{AmazonCloudFormationException} is returned.
}
\section{Accepted Parameters}{
\preformatted{describe_stacks(
  StackName = "string",
  NextToken = "string"
)
}
}

