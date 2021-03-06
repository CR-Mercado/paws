% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.glacier_operations.R
\name{get_vault_access_policy}
\alias{get_vault_access_policy}
\title{This operation retrieves the access-policy subresource set on the vault; for more information on setting this subresource, see Set Vault Access Policy (PUT access-policy)}
\usage{
get_vault_access_policy(accountId, vaultName)
}
\arguments{
\item{accountId}{[required] The \code{AccountId} value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '\code{-}' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.}

\item{vaultName}{[required] The name of the vault.}
}
\description{
This operation retrieves the \code{access-policy} subresource set on the vault; for more information on setting this subresource, see \href{http://docs.aws.amazon.com/amazonglacier/latest/dev/api-SetVaultAccessPolicy.html}{Set Vault Access Policy (PUT access-policy)}. If there is no access policy set on the vault, the operation returns a \code{404 Not found} error. For more information about vault access policies, see \href{http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html}{Amazon Glacier Access Control with Vault Access Policies}.
}
\section{Accepted Parameters}{
\preformatted{get_vault_access_policy(
  accountId = "string",
  vaultName = "string"
)
}
}

\examples{
# The example retrieves the access-policy set on the vault named
# example-vault.
\donttest{get_vault_access_policy(
  accountId = "-",
  vaultName = "example-vault"
)}

}
