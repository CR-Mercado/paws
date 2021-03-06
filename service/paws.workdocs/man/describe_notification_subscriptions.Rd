% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.workdocs_operations.R
\name{describe_notification_subscriptions}
\alias{describe_notification_subscriptions}
\title{Lists the specified notification subscriptions}
\usage{
describe_notification_subscriptions(OrganizationId, Marker = NULL,
  Limit = NULL)
}
\arguments{
\item{OrganizationId}{[required] The ID of the organization.}

\item{Marker}{The marker for the next set of results. (You received this marker from a previous call.)}

\item{Limit}{The maximum number of items to return with this call.}
}
\description{
Lists the specified notification subscriptions.
}
\section{Accepted Parameters}{
\preformatted{describe_notification_subscriptions(
  OrganizationId = "string",
  Marker = "string",
  Limit = 123
)
}
}

