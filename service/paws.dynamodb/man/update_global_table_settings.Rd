% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.dynamodb_operations.R
\name{update_global_table_settings}
\alias{update_global_table_settings}
\title{Updates settings for a global table}
\usage{
update_global_table_settings(GlobalTableName,
  GlobalTableBillingMode = NULL,
  GlobalTableProvisionedWriteCapacityUnits = NULL,
  GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = NULL,
  GlobalTableGlobalSecondaryIndexSettingsUpdate = NULL,
  ReplicaSettingsUpdate = NULL)
}
\arguments{
\item{GlobalTableName}{[required] The name of the global table}

\item{GlobalTableBillingMode}{The billing mode of the global table. If \code{GlobalTableBillingMode} is not specified, the global table defaults to \code{PROVISIONED} capacity billing mode.}

\item{GlobalTableProvisionedWriteCapacityUnits}{The maximum number of writes consumed per second before DynamoDB returns a \code{ThrottlingException.}}

\item{GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate}{AutoScaling settings for managing provisioned write capacity for the global table.}

\item{GlobalTableGlobalSecondaryIndexSettingsUpdate}{Represents the settings of a global secondary index for a global table that will be modified.}

\item{ReplicaSettingsUpdate}{Represents the settings for a global table in a region that will be modified.}
}
\description{
Updates settings for a global table.
}
\section{Accepted Parameters}{
\preformatted{update_global_table_settings(
  GlobalTableName = "string",
  GlobalTableBillingMode = "PROVISIONED"|"PAY_PER_REQUEST",
  GlobalTableProvisionedWriteCapacityUnits = 123,
  GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = list(
    MinimumUnits = 123,
    MaximumUnits = 123,
    AutoScalingDisabled = TRUE|FALSE,
    AutoScalingRoleArn = "string",
    ScalingPolicyUpdate = list(
      PolicyName = "string",
      TargetTrackingScalingPolicyConfiguration = list(
        DisableScaleIn = TRUE|FALSE,
        ScaleInCooldown = 123,
        ScaleOutCooldown = 123,
        TargetValue = 123.0
      )
    )
  ),
  GlobalTableGlobalSecondaryIndexSettingsUpdate = list(
    list(
      IndexName = "string",
      ProvisionedWriteCapacityUnits = 123,
      ProvisionedWriteCapacityAutoScalingSettingsUpdate = list(
        MinimumUnits = 123,
        MaximumUnits = 123,
        AutoScalingDisabled = TRUE|FALSE,
        AutoScalingRoleArn = "string",
        ScalingPolicyUpdate = list(
          PolicyName = "string",
          TargetTrackingScalingPolicyConfiguration = list(
            DisableScaleIn = TRUE|FALSE,
            ScaleInCooldown = 123,
            ScaleOutCooldown = 123,
            TargetValue = 123.0
          )
        )
      )
    )
  ),
  ReplicaSettingsUpdate = list(
    list(
      RegionName = "string",
      ReplicaProvisionedReadCapacityUnits = 123,
      ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate = list(
        MinimumUnits = 123,
        MaximumUnits = 123,
        AutoScalingDisabled = TRUE|FALSE,
        AutoScalingRoleArn = "string",
        ScalingPolicyUpdate = list(
          PolicyName = "string",
          TargetTrackingScalingPolicyConfiguration = list(
            DisableScaleIn = TRUE|FALSE,
            ScaleInCooldown = 123,
            ScaleOutCooldown = 123,
            TargetValue = 123.0
          )
        )
      ),
      ReplicaGlobalSecondaryIndexSettingsUpdate = list(
        list(
          IndexName = "string",
          ProvisionedReadCapacityUnits = 123,
          ProvisionedReadCapacityAutoScalingSettingsUpdate = list(
            MinimumUnits = 123,
            MaximumUnits = 123,
            AutoScalingDisabled = TRUE|FALSE,
            AutoScalingRoleArn = "string",
            ScalingPolicyUpdate = list(
              PolicyName = "string",
              TargetTrackingScalingPolicyConfiguration = list(
                DisableScaleIn = TRUE|FALSE,
                ScaleInCooldown = 123,
                ScaleOutCooldown = 123,
                TargetValue = 123.0
              )
            )
          )
        )
      )
    )
  )
)
}
}

