% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudwatchevents_operations.R
\name{list_rules}
\alias{list_rules}
\title{Lists your Amazon CloudWatch Events rules}
\usage{
list_rules(NamePrefix = NULL, NextToken = NULL, Limit = NULL)
}
\arguments{
\item{NamePrefix}{The prefix matching the rule name.}

\item{NextToken}{The token returned by a previous call to retrieve the next set of results.}

\item{Limit}{The maximum number of results to return.}
}
\description{
Lists your Amazon CloudWatch Events rules. You can either list all the rules or you can provide a prefix to match to the rule names.
}
\details{
ListRules does not list the targets of a rule. To see the targets associated with a rule, use ListTargetsByRule.
}
\section{Accepted Parameters}{
\preformatted{list_rules(
  NamePrefix = "string",
  NextToken = "string",
  Limit = 123
)
}
}

