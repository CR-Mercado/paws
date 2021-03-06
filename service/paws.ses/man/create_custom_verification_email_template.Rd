% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ses_operations.R
\name{create_custom_verification_email_template}
\alias{create_custom_verification_email_template}
\title{Creates a new custom verification email template}
\usage{
create_custom_verification_email_template(TemplateName, FromEmailAddress,
  TemplateSubject, TemplateContent, SuccessRedirectionURL,
  FailureRedirectionURL)
}
\arguments{
\item{TemplateName}{[required] The name of the custom verification email template.}

\item{FromEmailAddress}{[required] The email address that the custom verification email is sent from.}

\item{TemplateSubject}{[required] The subject line of the custom verification email.}

\item{TemplateContent}{[required] The content of the custom verification email. The total size of the email must be less than 10 MB. The message body may contain HTML, with some limitations. For more information, see \href{http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html#custom-verification-emails-faq}{Custom Verification Email Frequently Asked Questions} in the \emph{Amazon SES Developer Guide}.}

\item{SuccessRedirectionURL}{[required] The URL that the recipient of the verification email is sent to if his or her address is successfully verified.}

\item{FailureRedirectionURL}{[required] The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.}
}
\description{
Creates a new custom verification email template.
}
\details{
For more information about custom verification email templates, see \href{http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html}{Using Custom Verification Email Templates} in the \emph{Amazon SES Developer Guide}.

You can execute this operation no more than once per second.
}
\section{Accepted Parameters}{
\preformatted{create_custom_verification_email_template(
  TemplateName = "string",
  FromEmailAddress = "string",
  TemplateSubject = "string",
  TemplateContent = "string",
  SuccessRedirectionURL = "string",
  FailureRedirectionURL = "string"
)
}
}

