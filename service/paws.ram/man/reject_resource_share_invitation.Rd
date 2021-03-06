% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ram_operations.R
\name{reject_resource_share_invitation}
\alias{reject_resource_share_invitation}
\title{Rejects an invitation to a resource share from another AWS account}
\usage{
reject_resource_share_invitation(resourceShareInvitationArn,
  clientToken = NULL)
}
\arguments{
\item{resourceShareInvitationArn}{[required] The Amazon Resource Name (ARN) of the invitation.}

\item{clientToken}{A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.}
}
\description{
Rejects an invitation to a resource share from another AWS account.
}
\section{Accepted Parameters}{
\preformatted{reject_resource_share_invitation(
  resourceShareInvitationArn = "string",
  clientToken = "string"
)
}
}

