% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.opsworks_operations.R
\name{deregister_rds_db_instance}
\alias{deregister_rds_db_instance}
\title{Deregisters an Amazon RDS instance}
\usage{
deregister_rds_db_instance(RdsDbInstanceArn)
}
\arguments{
\item{RdsDbInstanceArn}{[required] The Amazon RDS instance's ARN.}
}
\description{
Deregisters an Amazon RDS instance.
}
\details{
\strong{Required Permissions}: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see \href{http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.
}
\section{Accepted Parameters}{
\preformatted{deregister_rds_db_instance(
  RdsDbInstanceArn = "string"
)
}
}

