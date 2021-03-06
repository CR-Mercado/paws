% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ses_operations.R
\name{delete_receipt_rule}
\alias{delete_receipt_rule}
\title{Deletes the specified receipt rule}
\usage{
delete_receipt_rule(RuleSetName, RuleName)
}
\arguments{
\item{RuleSetName}{[required] The name of the receipt rule set that contains the receipt rule to delete.}

\item{RuleName}{[required] The name of the receipt rule to delete.}
}
\description{
Deletes the specified receipt rule.
}
\details{
For information about managing receipt rules, see the \href{http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html}{Amazon SES Developer Guide}.

You can execute this operation no more than once per second.
}
\section{Accepted Parameters}{
\preformatted{delete_receipt_rule(
  RuleSetName = "string",
  RuleName = "string"
)
}
}

\examples{
# The following example deletes a receipt rule:
\donttest{delete_receipt_rule(
  RuleName = "MyRule",
  RuleSetName = "MyRuleSet"
)}

}
