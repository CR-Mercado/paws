% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.elbv2_operations.R
\name{describe_ssl_policies}
\alias{describe_ssl_policies}
\title{Describes the specified policies or all policies used for SSL negotiation}
\usage{
describe_ssl_policies(Names = NULL, Marker = NULL, PageSize = NULL)
}
\arguments{
\item{Names}{The names of the policies.}

\item{Marker}{The marker for the next set of results. (You received this marker from a previous call.)}

\item{PageSize}{The maximum number of results to return with this call.}
}
\description{
Describes the specified policies or all policies used for SSL negotiation.
}
\details{
For more information, see \href{http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies}{Security Policies} in the \emph{Application Load Balancers Guide}.
}
\section{Accepted Parameters}{
\preformatted{describe_ssl_policies(
  Names = list(
    "string"
  ),
  Marker = "string",
  PageSize = 123
)
}
}

\examples{
# This example describes the specified policy used for SSL negotiation.
\donttest{describe_ssl_policies(
  Names = list(
    "ELBSecurityPolicy-2015-05"
  )
)}

}
