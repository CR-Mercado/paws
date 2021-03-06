% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.route53_operations.R
\name{list_traffic_policies}
\alias{list_traffic_policies}
\title{Gets information about the latest version for every traffic policy that is associated with the current AWS account}
\usage{
list_traffic_policies(TrafficPolicyIdMarker = NULL, MaxItems = NULL)
}
\arguments{
\item{TrafficPolicyIdMarker}{(Conditional) For your first request to \code{ListTrafficPolicies}, don't include the \code{TrafficPolicyIdMarker} parameter.

If you have more traffic policies than the value of \code{MaxItems}, \code{ListTrafficPolicies} returns only the first \code{MaxItems} traffic policies. To get the next group of policies, submit another request to \code{ListTrafficPolicies}. For the value of \code{TrafficPolicyIdMarker}, specify the value of \code{TrafficPolicyIdMarker} that was returned in the previous response.}

\item{MaxItems}{(Optional) The maximum number of traffic policies that you want Amazon Route 53 to return in response to this request. If you have more than \code{MaxItems} traffic policies, the value of \code{IsTruncated} in the response is \code{true}, and the value of \code{TrafficPolicyIdMarker} is the ID of the first traffic policy that Route 53 will return if you submit another request.}
}
\description{
Gets information about the latest version for every traffic policy that is associated with the current AWS account. Policies are listed in the order that they were created in.
}
\section{Accepted Parameters}{
\preformatted{list_traffic_policies(
  TrafficPolicyIdMarker = "string",
  MaxItems = "string"
)
}
}

