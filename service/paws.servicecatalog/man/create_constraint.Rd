% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.servicecatalog_operations.R
\name{create_constraint}
\alias{create_constraint}
\title{Creates a constraint}
\usage{
create_constraint(AcceptLanguage = NULL, PortfolioId, ProductId,
  Parameters, Type, Description = NULL, IdempotencyToken)
}
\arguments{
\item{AcceptLanguage}{The language code.
\itemize{
\item \code{en} - English (default)
\item \code{jp} - Japanese
\item \code{zh} - Chinese
}}

\item{PortfolioId}{[required] The portfolio identifier.}

\item{ProductId}{[required] The product identifier.}

\item{Parameters}{[required] The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:

LAUNCH

:   Specify the \code{RoleArn} property as follows:\preformatted{`{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}`

You cannot have both a `LAUNCH` and a `STACKSET` constraint.

You also cannot have more than one `LAUNCH` constraint on a product and portfolio.
}

NOTIFICATION

:   Specify the \code{NotificationArns} property as follows:\preformatted{`{"NotificationArns" : ["arn:aws:sns:us-east-1:123456789012:Topic"]}`
}

STACKSET

:   Specify the \code{Parameters} property as follows:\preformatted{`{"Version": "String", "Properties": {"AccountList": [ "String" ], "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole": "String"}}`

You cannot have both a `LAUNCH` and a `STACKSET` constraint.

You also cannot have more than one `STACKSET` constraint on a product and portfolio.

Products with a `STACKSET` constraint will launch an AWS CloudFormation stack set.
}

TEMPLATE

:   Specify the \code{Rules} property. For more information, see \href{http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html}{Template Constraint Rules}.}

\item{Type}{[required] The type of constraint.
\itemize{
\item \code{LAUNCH}
\item \code{NOTIFICATION}
\item \code{STACKSET}
\item \code{TEMPLATE}
}}

\item{Description}{The description of the constraint.}

\item{IdempotencyToken}{[required] A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.}
}
\description{
Creates a constraint.
}
\section{Accepted Parameters}{
\preformatted{create_constraint(
  AcceptLanguage = "string",
  PortfolioId = "string",
  ProductId = "string",
  Parameters = "string",
  Type = "string",
  Description = "string",
  IdempotencyToken = "string"
)
}
}

