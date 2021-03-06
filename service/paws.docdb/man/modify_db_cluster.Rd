% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.docdb_operations.R
\name{modify_db_cluster}
\alias{modify_db_cluster}
\title{Modifies a setting for an Amazon DocumentDB DB cluster}
\usage{
modify_db_cluster(DBClusterIdentifier, NewDBClusterIdentifier = NULL,
  ApplyImmediately = NULL, BackupRetentionPeriod = NULL,
  DBClusterParameterGroupName = NULL, VpcSecurityGroupIds = NULL,
  Port = NULL, MasterUserPassword = NULL,
  PreferredBackupWindow = NULL, PreferredMaintenanceWindow = NULL,
  CloudwatchLogsExportConfiguration = NULL, EngineVersion = NULL)
}
\arguments{
\item{DBClusterIdentifier}{[required] The DB cluster identifier for the cluster that is being modified. This parameter is not case sensitive.

Constraints:
\itemize{
\item Must match the identifier of an existing \code{DBCluster}.
}}

\item{NewDBClusterIdentifier}{The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is stored as a lowercase string.

Constraints:
\itemize{
\item Must contain from 1 to 63 letters, numbers, or hyphens.
\item The first character must be a letter.
\item Cannot end with a hyphen or contain two consecutive hyphens.
}

Example: \code{my-cluster2}}

\item{ApplyImmediately}{A value that specifies whether the changes in this request and any pending changes are asynchronously applied as soon as possible, regardless of the \code{PreferredMaintenanceWindow} setting for the DB cluster. If this parameter is set to \code{false}, changes to the DB cluster are applied during the next maintenance window.

The \code{ApplyImmediately} parameter affects only the \code{NewDBClusterIdentifier} and \code{MasterUserPassword} values. If you set this parameter value to \code{false}, the changes to the \code{NewDBClusterIdentifier} and \code{MasterUserPassword} values are applied during the next maintenance window. All other changes are applied immediately, regardless of the value of the \code{ApplyImmediately} parameter.

Default: \code{false}}

\item{BackupRetentionPeriod}{The number of days for which automated backups are retained. You must specify a minimum value of 1.

Default: 1

Constraints:
\itemize{
\item Must be a value from 1 to 35.
}}

\item{DBClusterParameterGroupName}{The name of the DB cluster parameter group to use for the DB cluster.}

\item{VpcSecurityGroupIds}{A list of virtual private cloud (VPC) security groups that the DB cluster will belong to.}

\item{Port}{The port number on which the DB cluster accepts connections.

Constraints: Must be a value from \code{1150} to \code{65535}.

Default: The same port as the original DB cluster.}

\item{MasterUserPassword}{The new password for the master database user. This password can contain any printable ASCII character except "\code{/}", "\code{\"}", or "\code{@}".

Constraints: Must contain from 8 to 41 characters.}

\item{PreferredBackupWindow}{The daily time range during which automated backups are created if automated backups are enabled, using the \code{BackupRetentionPeriod} parameter.

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region.

Constraints:
\itemize{
\item Must be in the format \code{hh24:mi-hh24:mi}.
\item Must be in Universal Coordinated Time (UTC).
\item Must not conflict with the preferred maintenance window.
\item Must be at least 30 minutes.
}}

\item{PreferredMaintenanceWindow}{The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).

Format: \code{ddd:hh24:mi-ddd:hh24:mi}

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week.

Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun

Constraints: Minimum 30-minute window.}

\item{CloudwatchLogsExportConfiguration}{The configuration setting for the log types to be enabled for export to Amazon CloudWatch Logs for a specific DB instance or DB cluster. The \code{EnableLogTypes} and \code{DisableLogTypes} arrays determine which logs are exported (or not exported) to CloudWatch Logs.}

\item{EngineVersion}{The version number of the database engine to which you want to upgrade. Changing this parameter results in an outage. The change is applied during the next maintenance window unless the \code{ApplyImmediately} parameter is set to \code{true}.}
}
\description{
Modifies a setting for an Amazon DocumentDB DB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.
}
\section{Accepted Parameters}{
\preformatted{modify_db_cluster(
  DBClusterIdentifier = "string",
  NewDBClusterIdentifier = "string",
  ApplyImmediately = TRUE|FALSE,
  BackupRetentionPeriod = 123,
  DBClusterParameterGroupName = "string",
  VpcSecurityGroupIds = list(
    "string"
  ),
  Port = 123,
  MasterUserPassword = "string",
  PreferredBackupWindow = "string",
  PreferredMaintenanceWindow = "string",
  CloudwatchLogsExportConfiguration = list(
    EnableLogTypes = list(
      "string"
    ),
    DisableLogTypes = list(
      "string"
    )
  ),
  EngineVersion = "string"
)
}
}

