% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.rds_operations.R
\name{remove_role_from_db_instance}
\alias{remove_role_from_db_instance}
\title{Disassociates an AWS Identity and Access Management (IAM) role from a DB instance}
\usage{
remove_role_from_db_instance(DBInstanceIdentifier, RoleArn, FeatureName)
}
\arguments{
\item{DBInstanceIdentifier}{[required] The name of the DB instance to disassociate the IAM role from.}

\item{RoleArn}{[required] The Amazon Resource Name (ARN) of the IAM role to disassociate from the DB instance, for example \code{arn:aws:iam::123456789012:role/AccessRole}.}

\item{FeatureName}{[required] The name of the feature for the DB instance that the IAM role is to be disassociated from. For the list of supported feature names, see DBEngineVersion.}
}
\description{
Disassociates an AWS Identity and Access Management (IAM) role from a DB instance.
}
\section{Accepted Parameters}{
\preformatted{remove_role_from_db_instance(
  DBInstanceIdentifier = "string",
  RoleArn = "string",
  FeatureName = "string"
)
}
}

