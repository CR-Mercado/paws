% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.alexaforbusiness_operations.R
\name{send_invitation}
\alias{send_invitation}
\title{Sends an enrollment invitation email with a URL to a user}
\usage{
send_invitation(UserArn = NULL)
}
\arguments{
\item{UserArn}{The ARN of the user to whom to send an invitation. Required.}
}
\description{
Sends an enrollment invitation email with a URL to a user. The URL is valid for 72 hours or until you call this operation again, whichever comes first.
}
\section{Accepted Parameters}{
\preformatted{send_invitation(
  UserArn = "string"
)
}
}

