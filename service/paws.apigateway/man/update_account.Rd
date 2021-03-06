% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.apigateway_operations.R
\name{update_account}
\alias{update_account}
\title{Changes information about the current Account resource}
\usage{
update_account(patchOperations = NULL)
}
\arguments{
\item{patchOperations}{A list of update operations to be applied to the specified resource and in the order specified in this list.}
}
\description{
Changes information about the current Account resource.
}
\section{Accepted Parameters}{
\preformatted{update_account(
  patchOperations = list(
    list(
      op = "add"|"remove"|"replace"|"move"|"copy"|"test",
      path = "string",
      value = "string",
      from = "string"
    )
  )
)
}
}

