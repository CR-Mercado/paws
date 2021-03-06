% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{get_reserved_instances_exchange_quote}
\alias{get_reserved_instances_exchange_quote}
\title{Returns a quote and exchange information for exchanging one or more specified Convertible Reserved Instances for a new Convertible Reserved Instance}
\usage{
get_reserved_instances_exchange_quote(DryRun = NULL, ReservedInstanceIds,
  TargetConfigurations = NULL)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is \code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{ReservedInstanceIds}{[required] The IDs of the Convertible Reserved Instances to exchange.}

\item{TargetConfigurations}{The configuration of the target Convertible Reserved Instance to exchange for your current Convertible Reserved Instances.}
}
\description{
Returns a quote and exchange information for exchanging one or more specified Convertible Reserved Instances for a new Convertible Reserved Instance. If the exchange cannot be performed, the reason is returned in the response. Use AcceptReservedInstancesExchangeQuote to perform the exchange.
}
\section{Accepted Parameters}{
\preformatted{get_reserved_instances_exchange_quote(
  DryRun = TRUE|FALSE,
  ReservedInstanceIds = list(
    "string"
  ),
  TargetConfigurations = list(
    list(
      InstanceCount = 123,
      OfferingId = "string"
    )
  )
)
}
}

