% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cognitoidentityprovider_operations.R
\name{update_resource_server}
\alias{update_resource_server}
\title{Updates the name and scopes of resource server}
\usage{
update_resource_server(UserPoolId, Identifier, Name, Scopes = NULL)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID for the user pool.}

\item{Identifier}{[required] The identifier for the resource server.}

\item{Name}{[required] The name of the resource server.}

\item{Scopes}{The scope values to be set for the resource server.}
}
\description{
Updates the name and scopes of resource server. All other fields are read-only.
}
\section{Accepted Parameters}{
\preformatted{update_resource_server(
  UserPoolId = "string",
  Identifier = "string",
  Name = "string",
  Scopes = list(
    list(
      ScopeName = "string",
      ScopeDescription = "string"
    )
  )
)
}
}

