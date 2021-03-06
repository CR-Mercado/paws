% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.mq_operations.R
\name{describe_broker}
\alias{describe_broker}
\title{Returns information about the specified broker}
\usage{
describe_broker(BrokerId)
}
\arguments{
\item{BrokerId}{[required] The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.}
}
\description{
Returns information about the specified broker.
}
\section{Accepted Parameters}{
\preformatted{describe_broker(
  BrokerId = "string"
)
}
}

