% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iam_operations.R
\name{list_attached_group_policies}
\alias{list_attached_group_policies}
\title{Lists all managed policies that are attached to the specified IAM group}
\usage{
list_attached_group_policies(GroupName, PathPrefix = NULL,
  Marker = NULL, MaxItems = NULL)
}
\arguments{
\item{GroupName}{[required] The name (friendly name, not ARN) of the group to list attached policies for.

This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: \_+=,.@-}

\item{PathPrefix}{The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.

This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.}

\item{Marker}{Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the \code{Marker} element in the response that you received to indicate where the next call should start.}

\item{MaxItems}{Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the \code{IsTruncated} response element is \code{true}.

If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the \code{IsTruncated} response element returns \code{true}, and \code{Marker} contains a value to include in the subsequent call that tells the service where to continue from.}
}
\description{
Lists all managed policies that are attached to the specified IAM group.
}
\details{
An IAM group can also have inline policies embedded with it. To list the inline policies for a group, use the ListGroupPolicies API. For information about policies, see \href{http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html}{Managed Policies and Inline Policies} in the \emph{IAM User Guide}.

You can paginate the results using the \code{MaxItems} and \code{Marker} parameters. You can use the \code{PathPrefix} parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.
}
\section{Accepted Parameters}{
\preformatted{list_attached_group_policies(
  GroupName = "string",
  PathPrefix = "string",
  Marker = "string",
  MaxItems = 123
)
}
}

