% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.rds_operations.R
\name{copy_db_parameter_group}
\alias{copy_db_parameter_group}
\title{Copies the specified DB parameter group}
\usage{
copy_db_parameter_group(SourceDBParameterGroupIdentifier,
  TargetDBParameterGroupIdentifier, TargetDBParameterGroupDescription,
  Tags = NULL)
}
\arguments{
\item{SourceDBParameterGroupIdentifier}{[required] The identifier or ARN for the source DB parameter group. For information about creating an ARN, see \href{http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing}{Constructing an ARN for Amazon RDS} in the \emph{Amazon RDS User Guide}.

Constraints:
\itemize{
\item Must specify a valid DB parameter group.
\item Must specify a valid DB parameter group identifier, for example \code{my-db-param-group}, or a valid ARN.
}}

\item{TargetDBParameterGroupIdentifier}{[required] The identifier for the copied DB parameter group.

Constraints:
\itemize{
\item Can't be null, empty, or blank
\item Must contain from 1 to 255 letters, numbers, or hyphens
\item First character must be a letter
\item Can't end with a hyphen or contain two consecutive hyphens
}

Example: \code{my-db-parameter-group}}

\item{TargetDBParameterGroupDescription}{[required] A description for the copied DB parameter group.}

\item{Tags}{}
}
\description{
Copies the specified DB parameter group.
}
\section{Accepted Parameters}{
\preformatted{copy_db_parameter_group(
  SourceDBParameterGroupIdentifier = "string",
  TargetDBParameterGroupIdentifier = "string",
  TargetDBParameterGroupDescription = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

