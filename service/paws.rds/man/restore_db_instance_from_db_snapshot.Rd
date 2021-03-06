% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.rds_operations.R
\name{restore_db_instance_from_db_snapshot}
\alias{restore_db_instance_from_db_snapshot}
\title{Creates a new DB instance from a DB snapshot}
\usage{
restore_db_instance_from_db_snapshot(DBInstanceIdentifier,
  DBSnapshotIdentifier, DBInstanceClass = NULL, Port = NULL,
  AvailabilityZone = NULL, DBSubnetGroupName = NULL, MultiAZ = NULL,
  PubliclyAccessible = NULL, AutoMinorVersionUpgrade = NULL,
  LicenseModel = NULL, DBName = NULL, Engine = NULL, Iops = NULL,
  OptionGroupName = NULL, Tags = NULL, StorageType = NULL,
  TdeCredentialArn = NULL, TdeCredentialPassword = NULL,
  VpcSecurityGroupIds = NULL, Domain = NULL,
  CopyTagsToSnapshot = NULL, DomainIAMRoleName = NULL,
  EnableIAMDatabaseAuthentication = NULL,
  EnableCloudwatchLogsExports = NULL, ProcessorFeatures = NULL,
  UseDefaultProcessorFeatures = NULL, DBParameterGroupName = NULL,
  DeletionProtection = NULL)
}
\arguments{
\item{DBInstanceIdentifier}{[required] Name of the DB instance to create from the DB snapshot. This parameter isn't case-sensitive.

Constraints:
\itemize{
\item Must contain from 1 to 63 numbers, letters, or hyphens
\item First character must be a letter
\item Can't end with a hyphen or contain two consecutive hyphens
}

Example: \code{my-snapshot-id}}

\item{DBSnapshotIdentifier}{[required] The identifier for the DB snapshot to restore from.

Constraints:
\itemize{
\item Must match the identifier of an existing DBSnapshot.
\item If you are restoring from a shared manual DB snapshot, the \code{DBSnapshotIdentifier} must be the ARN of the shared DB snapshot.
}}

\item{DBInstanceClass}{The compute and memory capacity of the Amazon RDS DB instance, for example, \code{db.m4.large}. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see \href{http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html}{DB Instance Class} in the \emph{Amazon RDS User Guide.}

Default: The same DBInstanceClass as the original DB instance.}

\item{Port}{The port number on which the database accepts connections.

Default: The same port as the original DB instance

Constraints: Value must be \code{1150-65535}}

\item{AvailabilityZone}{The EC2 Availability Zone that the DB instance is created in.

Default: A random, system-chosen Availability Zone.

Constraint: You can't specify the AvailabilityZone parameter if the MultiAZ parameter is set to \code{true}.

Example: \code{us-east-1a}}

\item{DBSubnetGroupName}{The DB subnet group name to use for the new instance.

Constraints: If supplied, must match the name of an existing DBSubnetGroup.

Example: \code{mySubnetgroup}}

\item{MultiAZ}{Specifies if the DB instance is a Multi-AZ deployment.

Constraint: You can't specify the AvailabilityZone parameter if the MultiAZ parameter is set to \code{true}.}

\item{PubliclyAccessible}{Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address. For more information, see CreateDBInstance.}

\item{AutoMinorVersionUpgrade}{Indicates that minor version upgrades are applied automatically to the DB instance during the maintenance window.}

\item{LicenseModel}{License model information for the restored DB instance.

Default: Same as source.

Valid values: \code{license-included} | \code{bring-your-own-license} | \code{general-public-license}}

\item{DBName}{The database name for the restored DB instance.

This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB engines.}

\item{Engine}{The database engine to use for the new instance.

Default: The same as source

Constraint: Must be compatible with the engine of the source. For example, you can restore a MariaDB 10.1 DB instance from a MySQL 5.6 snapshot.

Valid Values:
\itemize{
\item \code{mariadb}
\item \code{mysql}
\item \code{oracle-ee}
\item \code{oracle-se2}
\item \code{oracle-se1}
\item \code{oracle-se}
\item \code{postgres}
\item \code{sqlserver-ee}
\item \code{sqlserver-se}
\item \code{sqlserver-ex}
\item \code{sqlserver-web}
}}

\item{Iops}{Specifies the amount of provisioned IOPS for the DB instance, expressed in I/O operations per second. If this parameter is not specified, the IOPS value is taken from the backup. If this parameter is set to 0, the new instance is converted to a non-PIOPS instance. The conversion takes additional time, though your DB instance is available for connections before the conversion starts.

The provisioned IOPS value must follow the requirements for your database engine. For more information, see \href{http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS}{Amazon RDS Provisioned IOPS Storage to Improve Performance} in the \emph{Amazon RDS User Guide.}

Constraints: Must be an integer greater than 1000.}

\item{OptionGroupName}{The name of the option group to be used for the restored DB instance.

Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance}

\item{Tags}{}

\item{StorageType}{Specifies the storage type to be associated with the DB instance.

Valid values: \code{standard | gp2 | io1}

If you specify \code{io1}, you must also include a value for the \code{Iops} parameter.

Default: \code{io1} if the \code{Iops} parameter is specified, otherwise \code{standard}}

\item{TdeCredentialArn}{The ARN from the key store with which to associate the instance for TDE encryption.}

\item{TdeCredentialPassword}{The password for the given ARN from the key store in order to access the device.}

\item{VpcSecurityGroupIds}{A list of EC2 VPC security groups to associate with this DB instance.

Default: The default EC2 VPC security group for the DB subnet group's VPC.}

\item{Domain}{Specify the Active Directory Domain to restore the instance in.}

\item{CopyTagsToSnapshot}{True to copy all tags from the restored DB instance to snapshots of the DB instance, and otherwise false. The default is false.}

\item{DomainIAMRoleName}{Specify the name of the IAM role to be used when making API calls to the Directory Service.}

\item{EnableIAMDatabaseAuthentication}{True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

You can enable IAM database authentication for the following database engines
\itemize{
\item For MySQL 5.6, minor version 5.6.34 or higher
\item For MySQL 5.7, minor version 5.7.16 or higher
}

Default: \code{false}}

\item{EnableCloudwatchLogsExports}{The list of logs that the restored DB instance is to export to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see \href{http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch}{Publishing Database Logs to Amazon CloudWatch Logs} in the \emph{Amazon Aurora User Guide}.}

\item{ProcessorFeatures}{The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.}

\item{UseDefaultProcessorFeatures}{A value that specifies that the DB instance class of the DB instance uses its default processor features.}

\item{DBParameterGroupName}{The name of the DB parameter group to associate with this DB instance. If this argument is omitted, the default DBParameterGroup for the specified engine is used.

Constraints:
\itemize{
\item If supplied, must match the name of an existing DBParameterGroup.
\item Must be 1 to 255 letters, numbers, or hyphens.
\item First character must be a letter.
\item Can't end with a hyphen or contain two consecutive hyphens.
}}

\item{DeletionProtection}{Indicates if the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to true. The default is false. For more information, see \href{http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html}{Deleting a DB Instance}.}
}
\description{
Creates a new DB instance from a DB snapshot. The target database is created from the source database restore point with the most of original configuration with the default security group and the default DB parameter group. By default, the new DB instance is created as a single-AZ deployment except when the instance is a SQL Server instance that has an option group that is associated with mirroring; in this case, the instance becomes a mirrored AZ deployment and not a single-AZ deployment.
}
\details{
If your intent is to replace your original DB instance with the new, restored DB instance, then rename your original DB instance before you call the RestoreDBInstanceFromDBSnapshot action. RDS doesn't allow two DB instances with the same name. Once you have renamed your original DB instance with a different identifier, then you can pass the original name of the DB instance as the DBInstanceIdentifier in the call to the RestoreDBInstanceFromDBSnapshot action. The result is that you will replace the original DB instance with the DB instance created from the snapshot.

If you are restoring from a shared manual DB snapshot, the \code{DBSnapshotIdentifier} must be the ARN of the shared DB snapshot.

This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora, use RestoreDBClusterFromSnapshot.
}
\section{Accepted Parameters}{
\preformatted{restore_db_instance_from_db_snapshot(
  DBInstanceIdentifier = "string",
  DBSnapshotIdentifier = "string",
  DBInstanceClass = "string",
  Port = 123,
  AvailabilityZone = "string",
  DBSubnetGroupName = "string",
  MultiAZ = TRUE|FALSE,
  PubliclyAccessible = TRUE|FALSE,
  AutoMinorVersionUpgrade = TRUE|FALSE,
  LicenseModel = "string",
  DBName = "string",
  Engine = "string",
  Iops = 123,
  OptionGroupName = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  ),
  StorageType = "string",
  TdeCredentialArn = "string",
  TdeCredentialPassword = "string",
  VpcSecurityGroupIds = list(
    "string"
  ),
  Domain = "string",
  CopyTagsToSnapshot = TRUE|FALSE,
  DomainIAMRoleName = "string",
  EnableIAMDatabaseAuthentication = TRUE|FALSE,
  EnableCloudwatchLogsExports = list(
    "string"
  ),
  ProcessorFeatures = list(
    list(
      Name = "string",
      Value = "string"
    )
  ),
  UseDefaultProcessorFeatures = TRUE|FALSE,
  DBParameterGroupName = "string",
  DeletionProtection = TRUE|FALSE
)
}
}

