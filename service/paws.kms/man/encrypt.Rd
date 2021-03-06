% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.kms_operations.R
\name{encrypt}
\alias{encrypt}
\title{Encrypts plaintext into ciphertext by using a customer master key (CMK)}
\usage{
encrypt(KeyId, Plaintext, EncryptionContext = NULL, GrantTokens = NULL)
}
\arguments{
\item{KeyId}{[required] A unique identifier for the customer master key (CMK).

To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with "alias/". To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.

For example:
\itemize{
\item Key ID: \code{1234abcd-12ab-34cd-56ef-1234567890ab}
\item Key ARN: \code{arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab}
\item Alias name: \code{alias/ExampleAlias}
\item Alias ARN: \code{arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias}
}

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey. To get the alias name and alias ARN, use ListAliases.}

\item{Plaintext}{[required] Data to be encrypted.}

\item{EncryptionContext}{Name-value pair that specifies the encryption context to be used for authenticated encryption. If used here, the same value must be supplied to the \code{Decrypt} API or decryption will fail. For more information, see \href{http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html}{Encryption Context}.}

\item{GrantTokens}{A list of grant tokens.

For more information, see \href{http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token}{Grant Tokens} in the \emph{AWS Key Management Service Developer Guide}.}
}
\description{
Encrypts plaintext into ciphertext by using a customer master key (CMK). The \code{Encrypt} operation has two primary use cases:
}
\details{
\itemize{
\item You can encrypt up to 4 kilobytes (4096 bytes) of arbitrary data such as an RSA key, a database password, or other sensitive information.
\item To move encrypted data from one AWS region to another, you can use this operation to encrypt in the new region the plaintext data key that was used to encrypt the data in the original region. This provides you with an encrypted copy of the data key that can be decrypted in the new region and used there to decrypt the encrypted data.
}

To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.

Unless you are moving encrypted data from one region to another, you don't use this operation to encrypt a generated data key within a region. To get data keys that are already encrypted, call the GenerateDataKey or GenerateDataKeyWithoutPlaintext operation. Data keys don't need to be encrypted again by calling \code{Encrypt}.

To encrypt data locally in your application, use the GenerateDataKey operation to return a plaintext data encryption key and a copy of the key encrypted under the CMK of your choosing.

The result of this operation varies with the key state of the CMK. For details, see \href{http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html}{How Key State Affects Use of a Customer Master Key} in the \emph{AWS Key Management Service Developer Guide}.
}
\section{Accepted Parameters}{
\preformatted{encrypt(
  KeyId = "string",
  Plaintext = raw,
  EncryptionContext = list(
    "string"
  ),
  GrantTokens = list(
    "string"
  )
)
}
}

\examples{
# The following example encrypts data with the specified customer master
# key (CMK).
\donttest{encrypt(
  KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab",
  Plaintext = "<binary data>"
)}

}
