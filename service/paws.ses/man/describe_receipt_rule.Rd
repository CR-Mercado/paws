% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ses_operations.R
\name{describe_receipt_rule}
\alias{describe_receipt_rule}
\title{Returns the details of the specified receipt rule}
\usage{
describe_receipt_rule(RuleSetName, RuleName)
}
\arguments{
\item{RuleSetName}{[required] The name of the receipt rule set that the receipt rule belongs to.}

\item{RuleName}{[required] The name of the receipt rule.}
}
\description{
Returns the details of the specified receipt rule.
}
\details{
For information about setting up receipt rules, see the \href{http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html}{Amazon SES Developer Guide}.

You can execute this operation no more than once per second.
}
\section{Accepted Parameters}{
\preformatted{describe_receipt_rule(
  RuleSetName = "string",
  RuleName = "string"
)
}
}

\examples{
# The following example returns the details of a receipt rule:
\donttest{describe_receipt_rule(
  RuleName = "MyRule",
  RuleSetName = "MyRuleSet"
)}

}
