% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ses_operations.R
\name{verify_domain_identity}
\alias{verify_domain_identity}
\title{Adds a domain to the list of identities for your Amazon SES account in the current AWS Region and attempts to verify it}
\usage{
verify_domain_identity(Domain)
}
\arguments{
\item{Domain}{[required] The domain to be verified.}
}
\description{
Adds a domain to the list of identities for your Amazon SES account in the current AWS Region and attempts to verify it. For more information about verifying domains, see \href{http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html}{Verifying Email Addresses and Domains} in the \emph{Amazon SES Developer Guide.}
}
\details{
You can execute this operation no more than once per second.
}
\section{Accepted Parameters}{
\preformatted{verify_domain_identity(
  Domain = "string"
)
}
}

\examples{
# The following example starts the domain verification process with Amazon
# SES:
\donttest{verify_domain_identity(
  Domain = "example.com"
)}

}
