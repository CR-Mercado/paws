% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.workmail_operations.R
\name{update_primary_email_address}
\alias{update_primary_email_address}
\title{Updates the primary email for an entity}
\usage{
update_primary_email_address(OrganizationId, EntityId, Email)
}
\arguments{
\item{OrganizationId}{[required] The organization that contains the entity to update.}

\item{EntityId}{[required] The entity to update (user, group, or resource).}

\item{Email}{[required] The value of the email to be updated as primary.}
}
\description{
Updates the primary email for an entity. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email) and the email provided in the input is promoted as the primary.
}
\section{Accepted Parameters}{
\preformatted{update_primary_email_address(
  OrganizationId = "string",
  EntityId = "string",
  Email = "string"
)
}
}

