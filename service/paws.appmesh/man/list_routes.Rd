% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.appmesh_operations.R
\name{list_routes}
\alias{list_routes}
\title{Returns a list of existing routes in a service mesh}
\usage{
list_routes(limit = NULL, meshName, nextToken = NULL,
  virtualRouterName)
}
\arguments{
\item{limit}{The maximum number of mesh results returned by \code{ListRoutes} in paginated output. When this parameter is used, \code{ListRoutes} only returns \code{limit} results in a single page along with a \code{nextToken} response element. The remaining results of the initial request can be seen by sending another \code{ListRoutes} request with the returned \code{nextToken} value. This value can be between 1 and 100. If this parameter is not used, then \code{ListRoutes} returns up to 100 results and a \code{nextToken} value if applicable.}

\item{meshName}{[required] The name of the service mesh in which to list routes.}

\item{nextToken}{The \code{nextToken} value returned from a previous paginated \code{ListRoutes} request where \code{limit} was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the \code{nextToken} value.}

\item{virtualRouterName}{[required] The name of the virtual router in which to list routes.}
}
\description{
Returns a list of existing routes in a service mesh.
}
\section{Accepted Parameters}{
\preformatted{list_routes(
  limit = 123,
  meshName = "string",
  nextToken = "string",
  virtualRouterName = "string"
)
}
}

