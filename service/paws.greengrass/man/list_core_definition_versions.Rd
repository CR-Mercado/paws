% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.greengrass_operations.R
\name{list_core_definition_versions}
\alias{list_core_definition_versions}
\title{Lists the versions of a core definition}
\usage{
list_core_definition_versions(CoreDefinitionId, MaxResults = NULL,
  NextToken = NULL)
}
\arguments{
\item{CoreDefinitionId}{[required] The ID of the core definition.}

\item{MaxResults}{The maximum number of results to be returned per request.}

\item{NextToken}{The token for the next set of results, or ''null'' if there are no additional results.}
}
\description{
Lists the versions of a core definition.
}
\section{Accepted Parameters}{
\preformatted{list_core_definition_versions(
  CoreDefinitionId = "string",
  MaxResults = "string",
  NextToken = "string"
)
}
}

