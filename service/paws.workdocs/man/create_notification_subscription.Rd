% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.workdocs_operations.R
\name{create_notification_subscription}
\alias{create_notification_subscription}
\title{Configure Amazon WorkDocs to use Amazon SNS notifications}
\usage{
create_notification_subscription(OrganizationId, Endpoint, Protocol,
  SubscriptionType)
}
\arguments{
\item{OrganizationId}{[required] The ID of the organization.}

\item{Endpoint}{[required] The endpoint to receive the notifications. If the protocol is HTTPS, the endpoint is a URL that begins with "https://".}

\item{Protocol}{[required] The protocol to use. The supported value is https, which delivers JSON-encoded messages using HTTPS POST.}

\item{SubscriptionType}{[required] The notification type.}
}
\description{
Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives a confirmation message, and must confirm the subscription.
}
\details{
For more information, see \href{http://docs.aws.amazon.com/workdocs/latest/developerguide/subscribe-notifications.html}{Subscribe to Notifications} in the \emph{Amazon WorkDocs Developer Guide}.
}
\section{Accepted Parameters}{
\preformatted{create_notification_subscription(
  OrganizationId = "string",
  Endpoint = "string",
  Protocol = "HTTPS",
  SubscriptionType = "ALL"
)
}
}

