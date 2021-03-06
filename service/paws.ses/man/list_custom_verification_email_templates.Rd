% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ses_operations.R
\name{list_custom_verification_email_templates}
\alias{list_custom_verification_email_templates}
\title{Lists the existing custom verification email templates for your account in the current AWS Region}
\usage{
list_custom_verification_email_templates(NextToken = NULL,
  MaxResults = NULL)
}
\arguments{
\item{NextToken}{An array the contains the name and creation time stamp for each template in your Amazon SES account.}

\item{MaxResults}{The maximum number of custom verification email templates to return. This value must be at least 1 and less than or equal to 50. If you do not specify a value, or if you specify a value less than 1 or greater than 50, the operation will return up to 50 results.}
}
\description{
Lists the existing custom verification email templates for your account in the current AWS Region.
}
\details{
For more information about custom verification email templates, see \href{http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html}{Using Custom Verification Email Templates} in the \emph{Amazon SES Developer Guide}.

You can execute this operation no more than once per second.
}
\section{Accepted Parameters}{
\preformatted{list_custom_verification_email_templates(
  NextToken = "string",
  MaxResults = 123
)
}
}

