% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.directoryservice_operations.R
\name{list_ip_routes}
\alias{list_ip_routes}
\title{Lists the address blocks that you have added to a directory}
\usage{
list_ip_routes(DirectoryId, NextToken = NULL, Limit = NULL)
}
\arguments{
\item{DirectoryId}{[required] Identifier (ID) of the directory for which you want to retrieve the IP addresses.}

\item{NextToken}{The \emph{ListIpRoutes.NextToken} value from a previous call to ListIpRoutes. Pass null if this is the first call.}

\item{Limit}{Maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.}
}
\description{
Lists the address blocks that you have added to a directory.
}
\section{Accepted Parameters}{
\preformatted{list_ip_routes(
  DirectoryId = "string",
  NextToken = "string",
  Limit = 123
)
}
}

