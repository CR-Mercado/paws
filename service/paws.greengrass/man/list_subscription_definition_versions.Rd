% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.greengrass_operations.R
\name{list_subscription_definition_versions}
\alias{list_subscription_definition_versions}
\title{Lists the versions of a subscription definition}
\usage{
list_subscription_definition_versions(MaxResults = NULL,
  NextToken = NULL, SubscriptionDefinitionId)
}
\arguments{
\item{MaxResults}{The maximum number of results to be returned per request.}

\item{NextToken}{The token for the next set of results, or ''null'' if there are no additional results.}

\item{SubscriptionDefinitionId}{[required] The ID of the subscription definition.}
}
\description{
Lists the versions of a subscription definition.
}
\section{Accepted Parameters}{
\preformatted{list_subscription_definition_versions(
  MaxResults = "string",
  NextToken = "string",
  SubscriptionDefinitionId = "string"
)
}
}

