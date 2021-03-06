% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.wafregional_operations.R
\name{update_byte_match_set}
\alias{update_byte_match_set}
\title{Inserts or deletes ByteMatchTuple objects (filters) in a ByteMatchSet}
\usage{
update_byte_match_set(ByteMatchSetId, ChangeToken, Updates)
}
\arguments{
\item{ByteMatchSetId}{[required] The \code{ByteMatchSetId} of the ByteMatchSet that you want to update. \code{ByteMatchSetId} is returned by CreateByteMatchSet and by ListByteMatchSets.}

\item{ChangeToken}{[required] The value returned by the most recent call to GetChangeToken.}

\item{Updates}{[required] An array of \code{ByteMatchSetUpdate} objects that you want to insert into or delete from a ByteMatchSet. For more information, see the applicable data types:
\itemize{
\item ByteMatchSetUpdate: Contains \code{Action} and \code{ByteMatchTuple}
\item ByteMatchTuple: Contains \code{FieldToMatch}, \code{PositionalConstraint}, \code{TargetString}, and \code{TextTransformation}
\item FieldToMatch: Contains \code{Data} and \code{Type}
}}
}
\description{
Inserts or deletes ByteMatchTuple objects (filters) in a ByteMatchSet. For each \code{ByteMatchTuple} object, you specify the following values:
}
\details{
\itemize{
\item Whether to insert or delete the object from the array. If you want to change a \code{ByteMatchSetUpdate} object, you delete the existing object and add a new one.
\item The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the \code{User-Agent} header.
\item The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to look for. For more information, including how you specify the values for the AWS WAF API and the AWS CLI or SDKs, see \code{TargetString} in the ByteMatchTuple data type.
\item Where to look, such as at the beginning or the end of a query string.
\item Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.
}

For example, you can add a \code{ByteMatchSetUpdate} object that matches web requests in which \code{User-Agent} headers contain the string \code{BadBot}. You can then configure AWS WAF to block those requests.

To create and configure a \code{ByteMatchSet}, perform the following steps:
\enumerate{
\item Create a \code{ByteMatchSet.} For more information, see CreateByteMatchSet.
\item Use GetChangeToken to get the change token that you provide in the \code{ChangeToken} parameter of an \code{UpdateByteMatchSet} request.
\item Submit an \code{UpdateByteMatchSet} request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.
}

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the \href{http://docs.aws.amazon.com/waf/latest/developerguide/}{AWS WAF Developer Guide}.
}
\section{Accepted Parameters}{
\preformatted{update_byte_match_set(
  ByteMatchSetId = "string",
  ChangeToken = "string",
  Updates = list(
    list(
      Action = "INSERT"|"DELETE",
      ByteMatchTuple = list(
        FieldToMatch = list(
          Type = "URI"|"QUERY_STRING"|"HEADER"|"METHOD"|"BODY"|"SINGLE_QUERY_ARG"|"ALL_QUERY_ARGS",
          Data = "string"
        ),
        TargetString = raw,
        TextTransformation = "NONE"|"COMPRESS_WHITE_SPACE"|"HTML_ENTITY_DECODE"|"LOWERCASE"|"CMD_LINE"|"URL_DECODE",
        PositionalConstraint = "EXACTLY"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CONTAINS_WORD"
      )
    )
  )
)
}
}

\examples{
# The following example deletes a ByteMatchTuple object (filters) in an
# byte match set with the ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
\donttest{update_byte_match_set(
  ByteMatchSetId = "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5",
  ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
  Updates = list(
    list(
      Action = "DELETE",
      ByteMatchTuple = list(
        FieldToMatch = list(
          Data = "referer",
          Type = "HEADER"
        ),
        PositionalConstraint = "CONTAINS",
        TargetString = "badrefer1",
        TextTransformation = "NONE"
      )
    )
  )
)}

}
