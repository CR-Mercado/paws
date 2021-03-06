% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.directoryservice_operations.R
\name{connect_directory}
\alias{connect_directory}
\title{Creates an AD Connector to connect to an on-premises directory}
\usage{
connect_directory(Name, ShortName = NULL, Password, Description = NULL,
  Size, ConnectSettings)
}
\arguments{
\item{Name}{[required] The fully qualified name of the on-premises directory, such as \code{corp.example.com}.}

\item{ShortName}{The NetBIOS name of the on-premises directory, such as \code{CORP}.}

\item{Password}{[required] The password for the on-premises user account.}

\item{Description}{A textual description for the directory.}

\item{Size}{[required] The size of the directory.}

\item{ConnectSettings}{[required] A DirectoryConnectSettings object that contains additional information for the operation.}
}
\description{
Creates an AD Connector to connect to an on-premises directory.
}
\details{
Before you call \code{ConnectDirectory}, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the \code{ConnectDirectory} operation, see \href{http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html}{AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference}.
}
\section{Accepted Parameters}{
\preformatted{connect_directory(
  Name = "string",
  ShortName = "string",
  Password = "string",
  Description = "string",
  Size = "Small"|"Large",
  ConnectSettings = list(
    VpcId = "string",
    SubnetIds = list(
      "string"
    ),
    CustomerDnsIps = list(
      "string"
    ),
    CustomerUserName = "string"
  )
)
}
}

