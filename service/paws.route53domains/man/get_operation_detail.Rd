% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.route53domains_operations.R
\name{get_operation_detail}
\alias{get_operation_detail}
\title{This operation returns the current status of an operation that is not completed}
\usage{
get_operation_detail(OperationId)
}
\arguments{
\item{OperationId}{[required] The identifier for the operation for which you want to get the status. Amazon Route 53 returned the identifier in the response to the original request.}
}
\description{
This operation returns the current status of an operation that is not completed.
}
\section{Accepted Parameters}{
\preformatted{get_operation_detail(
  OperationId = "string"
)
}
}

