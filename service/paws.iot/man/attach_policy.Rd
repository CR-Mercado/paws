% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iot_operations.R
\name{attach_policy}
\alias{attach_policy}
\title{Attaches a policy to the specified target}
\usage{
attach_policy(policyName, target)
}
\arguments{
\item{policyName}{[required] The name of the policy to attach.}

\item{target}{[required] The \href{https://docs.aws.amazon.com/iot/latest/developerguide/iot-security-identity.html}{identity} to which the policy is attached.}
}
\description{
Attaches a policy to the specified target.
}
\section{Accepted Parameters}{
\preformatted{attach_policy(
  policyName = "string",
  target = "string"
)
}
}

