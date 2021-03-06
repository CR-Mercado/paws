% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ses_operations.R
\name{create_receipt_rule}
\alias{create_receipt_rule}
\title{Creates a receipt rule}
\usage{
create_receipt_rule(RuleSetName, After = NULL, Rule)
}
\arguments{
\item{RuleSetName}{[required] The name of the rule set that the receipt rule will be added to.}

\item{After}{The name of an existing rule after which the new rule will be placed. If this parameter is null, the new rule will be inserted at the beginning of the rule list.}

\item{Rule}{[required] A data structure that contains the specified rule's name, actions, recipients, domains, enabled status, scan status, and TLS policy.}
}
\description{
Creates a receipt rule.
}
\details{
For information about setting up receipt rules, see the \href{http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html}{Amazon SES Developer Guide}.

You can execute this operation no more than once per second.
}
\section{Accepted Parameters}{
\preformatted{create_receipt_rule(
  RuleSetName = "string",
  After = "string",
  Rule = list(
    Name = "string",
    Enabled = TRUE|FALSE,
    TlsPolicy = "Require"|"Optional",
    Recipients = list(
      "string"
    ),
    Actions = list(
      list(
        S3Action = list(
          TopicArn = "string",
          BucketName = "string",
          ObjectKeyPrefix = "string",
          KmsKeyArn = "string"
        ),
        BounceAction = list(
          TopicArn = "string",
          SmtpReplyCode = "string",
          StatusCode = "string",
          Message = "string",
          Sender = "string"
        ),
        WorkmailAction = list(
          TopicArn = "string",
          OrganizationArn = "string"
        ),
        LambdaAction = list(
          TopicArn = "string",
          FunctionArn = "string",
          InvocationType = "Event"|"RequestResponse"
        ),
        StopAction = list(
          Scope = "RuleSet",
          TopicArn = "string"
        ),
        AddHeaderAction = list(
          HeaderName = "string",
          HeaderValue = "string"
        ),
        SNSAction = list(
          TopicArn = "string",
          Encoding = "UTF-8"|"Base64"
        )
      )
    ),
    ScanEnabled = TRUE|FALSE
  )
)
}
}

\examples{
# The following example creates a new receipt rule:
\donttest{create_receipt_rule(
  After = "",
  Rule = list(
    Actions = list(
      list(
        S3Action = list(
          BucketName = "MyBucket",
          ObjectKeyPrefix = "email"
        )
      )
    ),
    Enabled = TRUE,
    Name = "MyRule",
    ScanEnabled = TRUE,
    TlsPolicy = "Optional"
  ),
  RuleSetName = "MyRuleSet"
)}

}
