% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.glacier_operations.R
\name{add_tags_to_vault}
\alias{add_tags_to_vault}
\title{This operation adds the specified tags to a vault}
\usage{
add_tags_to_vault(accountId, vaultName, Tags = NULL)
}
\arguments{
\item{accountId}{[required] The \code{AccountId} value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '\code{-}' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.}

\item{vaultName}{[required] The name of the vault.}

\item{Tags}{The tags to add to the vault. Each tag is composed of a key and a value. The value can be an empty string.}
}
\description{
This operation adds the specified tags to a vault. Each tag is composed of a key and a value. Each vault can have up to 10 tags. If your request would cause the tag limit for the vault to be exceeded, the operation throws the \code{LimitExceededException} error. If a tag already exists on the vault under a specified key, the existing key value will be overwritten. For more information about tags, see \href{http://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html}{Tagging Amazon Glacier Resources}.
}
\section{Accepted Parameters}{
\preformatted{add_tags_to_vault(
  accountId = "string",
  vaultName = "string",
  Tags = list(
    "string"
  )
)
}
}

\examples{
# The example adds two tags to a my-vault.
\donttest{add_tags_to_vault(
  Tags = list(
    examplekey1 = "examplevalue1",
    examplekey2 = "examplevalue2"
  ),
  accountId = "-",
  vaultName = "my-vault"
)}

}
