% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.configservice_operations.R
\name{delete_aggregation_authorization}
\alias{delete_aggregation_authorization}
\title{Deletes the authorization granted to the specified configuration aggregator account in a specified region}
\usage{
delete_aggregation_authorization(AuthorizedAccountId, AuthorizedAwsRegion)
}
\arguments{
\item{AuthorizedAccountId}{[required] The 12-digit account ID of the account authorized to aggregate data.}

\item{AuthorizedAwsRegion}{[required] The region authorized to collect aggregated data.}
}
\description{
Deletes the authorization granted to the specified configuration aggregator account in a specified region.
}
\section{Accepted Parameters}{
\preformatted{delete_aggregation_authorization(
  AuthorizedAccountId = "string",
  AuthorizedAwsRegion = "string"
)
}
}

