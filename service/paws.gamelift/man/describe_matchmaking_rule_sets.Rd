% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.gamelift_operations.R
\name{describe_matchmaking_rule_sets}
\alias{describe_matchmaking_rule_sets}
\title{Retrieves the details for FlexMatch matchmaking rule sets}
\usage{
describe_matchmaking_rule_sets(Names = NULL, Limit = NULL,
  NextToken = NULL)
}
\arguments{
\item{Names}{List of one or more matchmaking rule set names to retrieve details for. (Note: The rule set name is different from the optional "name" field in the rule set body.)}

\item{Limit}{Maximum number of results to return. Use this parameter with \code{NextToken} to get results as a set of sequential pages.}

\item{NextToken}{Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.}
}
\description{
Retrieves the details for FlexMatch matchmaking rule sets. You can request all existing rule sets for the region, or provide a list of one or more rule set names. When requesting multiple items, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a rule set is returned for each requested name.
}
\details{
\strong{Learn more}
\itemize{
\item \href{https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html}{Build a Rule Set}
}

\strong{Related operations}
\itemize{
\item CreateMatchmakingConfiguration
\item DescribeMatchmakingConfigurations
\item UpdateMatchmakingConfiguration
\item DeleteMatchmakingConfiguration
\item CreateMatchmakingRuleSet
\item DescribeMatchmakingRuleSets
\item ValidateMatchmakingRuleSet
\item DeleteMatchmakingRuleSet
}
}
\section{Accepted Parameters}{
\preformatted{describe_matchmaking_rule_sets(
  Names = list(
    "string"
  ),
  Limit = 123,
  NextToken = "string"
)
}
}

