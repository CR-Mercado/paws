% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.codedeploy_operations.R
\name{register_on_premises_instance}
\alias{register_on_premises_instance}
\title{Registers an on-premises instance}
\usage{
register_on_premises_instance(instanceName, iamSessionArn = NULL,
  iamUserArn = NULL)
}
\arguments{
\item{instanceName}{[required] The name of the on-premises instance to register.}

\item{iamSessionArn}{The ARN of the IAM session to associate with the on-premises instance.}

\item{iamUserArn}{The ARN of the IAM user to associate with the on-premises instance.}
}
\description{
Registers an on-premises instance.
}
\details{
Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the request. You cannot use both.
}
\section{Accepted Parameters}{
\preformatted{register_on_premises_instance(
  instanceName = "string",
  iamSessionArn = "string",
  iamUserArn = "string"
)
}
}

