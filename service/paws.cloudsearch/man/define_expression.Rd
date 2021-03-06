% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudsearch_operations.R
\name{define_expression}
\alias{define_expression}
\title{Configures an Expression for the search domain}
\usage{
define_expression(DomainName, Expression)
}
\arguments{
\item{DomainName}{[required]}

\item{Expression}{[required]}
}
\description{
Configures an \code{Expression} for the search domain. Used to create new expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. For more information, see \href{http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html}{Configuring Expressions} in the \emph{Amazon CloudSearch Developer Guide}.
}
\section{Accepted Parameters}{
\preformatted{define_expression(
  DomainName = "string",
  Expression = list(
    ExpressionName = "string",
    ExpressionValue = "string"
  )
)
}
}

