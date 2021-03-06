% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.s3_operations.R
\name{put_bucket_acl}
\alias{put_bucket_acl}
\title{Sets the permissions on a bucket using access control lists (ACL)}
\usage{
put_bucket_acl(ACL = NULL, AccessControlPolicy = NULL, Bucket,
  ContentMD5 = NULL, GrantFullControl = NULL, GrantRead = NULL,
  GrantReadACP = NULL, GrantWrite = NULL, GrantWriteACP = NULL)
}
\arguments{
\item{ACL}{The canned ACL to apply to the bucket.}

\item{AccessControlPolicy}{}

\item{Bucket}{[required]}

\item{ContentMD5}{}

\item{GrantFullControl}{Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.}

\item{GrantRead}{Allows grantee to list the objects in the bucket.}

\item{GrantReadACP}{Allows grantee to read the bucket ACL.}

\item{GrantWrite}{Allows grantee to create, overwrite, and delete any object in the bucket.}

\item{GrantWriteACP}{Allows grantee to write the ACL for the applicable bucket.}
}
\description{
Sets the permissions on a bucket using access control lists (ACL).
}
\section{Accepted Parameters}{
\preformatted{put_bucket_acl(
  ACL = "private"|"public-read"|"public-read-write"|"authenticated-read",
  AccessControlPolicy = list(
    Grants = list(
      list(
        Grantee = list(
          DisplayName = "string",
          EmailAddress = "string",
          ID = "string",
          Type = "CanonicalUser"|"AmazonCustomerByEmail"|"Group",
          URI = "string"
        ),
        Permission = "FULL_CONTROL"|"WRITE"|"WRITE_ACP"|"READ"|"READ_ACP"
      )
    ),
    Owner = list(
      DisplayName = "string",
      ID = "string"
    )
  ),
  Bucket = "string",
  ContentMD5 = "string",
  GrantFullControl = "string",
  GrantRead = "string",
  GrantReadACP = "string",
  GrantWrite = "string",
  GrantWriteACP = "string"
)
}
}

\examples{
# The following example replaces existing ACL on a bucket. The ACL grants
# the bucket owner (specified using the owner ID) and write permission to
# the LogDelivery group. Because this is a replace operation, you must
# specify all the grants in your request. To incrementally add or remove
# ACL grants, you might use the console.
\donttest{put_bucket_acl(
  Bucket = "examplebucket",
  GrantFullControl = "id=examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484",
  GrantWrite = "uri=http://acs.amazonaws.com/groups/s3/LogDelivery"
)}

}
