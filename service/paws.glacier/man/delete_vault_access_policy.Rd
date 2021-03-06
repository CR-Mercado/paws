% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.glacier_operations.R
\name{delete_vault_access_policy}
\alias{delete_vault_access_policy}
\title{This operation deletes the access policy associated with the specified vault}
\usage{
delete_vault_access_policy(accountId, vaultName)
}
\arguments{
\item{accountId}{[required] The \code{AccountId} value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '\code{-}' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.}

\item{vaultName}{[required] The name of the vault.}
}
\description{
This operation deletes the access policy associated with the specified vault. The operation is eventually consistent; that is, it might take some time for Amazon Glacier to completely remove the access policy, and you might still see the effect of the policy for a short time after you send the delete request.
}
\details{
This operation is idempotent. You can invoke delete multiple times, even if there is no policy associated with the vault. For more information about vault access policies, see \href{http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html}{Amazon Glacier Access Control with Vault Access Policies}.
}
\section{Accepted Parameters}{
\preformatted{delete_vault_access_policy(
  accountId = "string",
  vaultName = "string"
)
}
}

\examples{
# The example deletes the access policy associated with the vault named
# examplevault.
\donttest{delete_vault_access_policy(
  accountId = "-",
  vaultName = "examplevault"
)}

}
