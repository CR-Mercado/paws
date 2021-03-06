% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.transfer_operations.R
\name{create_server}
\alias{create_server}
\title{Instantiates an autoscaling virtual server based on Secure File Transfer Protocol (SFTP) in AWS}
\usage{
create_server(IdentityProviderDetails = NULL,
  IdentityProviderType = NULL, LoggingRole = NULL, Tags = NULL)
}
\arguments{
\item{IdentityProviderDetails}{An array containing all of the information required to call a customer-supplied authentication API. This parameter is not required when the \code{IdentityProviderType} value of server that is created uses the \code{SERVICE_MANAGED} authentication method.}

\item{IdentityProviderType}{The mode of authentication enabled for this service. The default value is \code{SERVICE_MANAGED}, which allows you to store and access SFTP user credentials within the service. An \code{IdentityProviderType} value of \code{API_GATEWAY} indicates that user authentication requires a call to an API Gateway endpoint URL provided by you to integrate an identity provider of your choice.}

\item{LoggingRole}{A value that allows the service to write your SFTP users' activity to your Amazon CloudWatch logs for monitoring and auditing purposes.}

\item{Tags}{Key-value pairs that can be used to group and search for servers.}
}
\description{
Instantiates an autoscaling virtual server based on Secure File Transfer Protocol (SFTP) in AWS. The call returns the \code{ServerId} property assigned by the service to the newly created server. Reference this \code{ServerId} property when you make updates to your server, or work with users.
}
\details{
The response returns the \code{ServerId} value for the newly created server.
}
\section{Accepted Parameters}{
\preformatted{create_server(
  IdentityProviderDetails = list(
    Url = "string",
    InvocationRole = "string"
  ),
  IdentityProviderType = "SERVICE_MANAGED"|"API_GATEWAY",
  LoggingRole = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

