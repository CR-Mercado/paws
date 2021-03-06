% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.emr_operations.R
\name{set_visible_to_all_users}
\alias{set_visible_to_all_users}
\title{Sets whether all AWS Identity and Access Management (IAM) users under your account can access the specified clusters (job flows)}
\usage{
set_visible_to_all_users(JobFlowIds, VisibleToAllUsers)
}
\arguments{
\item{JobFlowIds}{[required] Identifiers of the job flows to receive the new visibility setting.}

\item{VisibleToAllUsers}{[required] Whether the specified clusters are visible to all IAM users of the AWS account associated with the cluster. If this value is set to True, all IAM users of that AWS account can view and, if they have the proper IAM policy permissions set, manage the clusters. If it is set to False, only the IAM user that created a cluster can view and manage it.}
}
\description{
Sets whether all AWS Identity and Access Management (IAM) users under your account can access the specified clusters (job flows). This action works on running clusters. You can also set the visibility of a cluster when you launch it using the \code{VisibleToAllUsers} parameter of RunJobFlow. The SetVisibleToAllUsers action can be called only by an IAM user who created the cluster or the AWS account that owns the cluster.
}
\section{Accepted Parameters}{
\preformatted{set_visible_to_all_users(
  JobFlowIds = list(
    "string"
  ),
  VisibleToAllUsers = TRUE|FALSE
)
}
}

