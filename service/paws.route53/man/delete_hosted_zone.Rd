% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.route53_operations.R
\name{delete_hosted_zone}
\alias{delete_hosted_zone}
\title{Deletes a hosted zone}
\usage{
delete_hosted_zone(Id)
}
\arguments{
\item{Id}{[required] The ID of the hosted zone you want to delete.}
}
\description{
Deletes a hosted zone.
}
\details{
If the name servers for the hosted zone are associated with a domain and if you want to make the domain unavailable on the Internet, we recommend that you delete the name servers from the domain to prevent future DNS queries from possibly being misrouted. If the domain is registered with Amazon Route 53, see \code{UpdateDomainNameservers}. If the domain is registered with another registrar, use the method provided by the registrar to delete name servers for the domain.

Some domain registries don't allow you to remove all of the name servers for a domain. If the registry for your domain requires one or more name servers, we recommend that you delete the hosted zone only if you transfer DNS service to another service provider, and you replace the name servers for the domain with name servers from the new provider.

You can delete a hosted zone only if it contains only the default SOA record and NS resource record sets. If the hosted zone contains other resource record sets, you must delete them before you can delete the hosted zone. If you try to delete a hosted zone that contains other resource record sets, the request fails, and Route 53 returns a \code{HostedZoneNotEmpty} error. For information about deleting records from your hosted zone, see ChangeResourceRecordSets.

To verify that the hosted zone has been deleted, do one of the following:
\itemize{
\item Use the \code{GetHostedZone} action to request information about the hosted zone.
\item Use the \code{ListHostedZones} action to get a list of the hosted zones associated with the current AWS account.
}
}
\section{Accepted Parameters}{
\preformatted{delete_hosted_zone(
  Id = "string"
)
}
}

