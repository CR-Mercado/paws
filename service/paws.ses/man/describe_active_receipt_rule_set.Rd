% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ses_operations.R
\name{describe_active_receipt_rule_set}
\alias{describe_active_receipt_rule_set}
\title{Returns the metadata and receipt rules for the receipt rule set that is currently active}
\usage{
describe_active_receipt_rule_set()
}
\description{
Returns the metadata and receipt rules for the receipt rule set that is currently active.
}
\details{
For information about setting up receipt rule sets, see the \href{http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html}{Amazon SES Developer Guide}.

You can execute this operation no more than once per second.
}
\section{Accepted Parameters}{
\preformatted{describe_active_receipt_rule_set()
}
}

\examples{
# The following example returns the metadata and receipt rules for the
# receipt rule set that is currently active:
\donttest{describe_active_receipt_rule_set()}

}
