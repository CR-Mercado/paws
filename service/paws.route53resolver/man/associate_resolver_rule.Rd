% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.route53resolver_operations.R
\name{associate_resolver_rule}
\alias{associate_resolver_rule}
\title{Associates a resolver rule with a VPC}
\usage{
associate_resolver_rule(ResolverRuleId, Name = NULL, VPCId)
}
\arguments{
\item{ResolverRuleId}{[required] The ID of the resolver rule that you want to associate with the VPC. To list the existing resolver rules, use ListResolverRules.}

\item{Name}{A name for the association that you're creating between a resolver rule and a VPC.}

\item{VPCId}{[required] The ID of the VPC that you want to associate the resolver rule with.}
}
\description{
Associates a resolver rule with a VPC. When you associate a rule with a VPC, Resolver forwards all DNS queries for the domain name that is specified in the rule and that originate in the VPC. The queries are forwarded to the IP addresses for the DNS resolvers that are specified in the rule. For more information about rules, see CreateResolverRule.
}
\section{Accepted Parameters}{
\preformatted{associate_resolver_rule(
  ResolverRuleId = "string",
  Name = "string",
  VPCId = "string"
)
}
}

