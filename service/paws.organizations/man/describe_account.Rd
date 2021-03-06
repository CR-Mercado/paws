% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.organizations_operations.R
\name{describe_account}
\alias{describe_account}
\title{Retrieves Organizations-related information about the specified account}
\usage{
describe_account(AccountId)
}
\arguments{
\item{AccountId}{[required] The unique identifier (ID) of the AWS account that you want information about. You can get the ID from the ListAccounts or ListAccountsForParent operations.

The \href{http://wikipedia.org/wiki/regex}{regex pattern} for an account ID string requires exactly 12 digits.}
}
\description{
Retrieves Organizations-related information about the specified account.
}
\details{
This operation can be called only from the organization's master account.
}
\section{Accepted Parameters}{
\preformatted{describe_account(
  AccountId = "string"
)
}
}

\examples{
# The following example shows a user in the master account (111111111111)
# asking for details about account 555555555555:
\donttest{describe_account(
  AccountId = "555555555555"
)}

}
