% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lightsail_operations.R
\name{delete_instance}
\alias{delete_instance}
\title{Deletes a specific Amazon Lightsail virtual private server, or \emph{instance}}
\usage{
delete_instance(instanceName)
}
\arguments{
\item{instanceName}{[required] The name of the instance to delete.}
}
\description{
Deletes a specific Amazon Lightsail virtual private server, or \emph{instance}.
}
\details{
The \code{delete instance} operation supports tag-based access control via resource tags applied to the resource identified by instanceName. For more information, see the \href{https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags}{Lightsail Dev Guide}.
}
\section{Accepted Parameters}{
\preformatted{delete_instance(
  instanceName = "string"
)
}
}

