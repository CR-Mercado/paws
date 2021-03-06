% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.codedeploy_operations.R
\name{create_deployment_config}
\alias{create_deployment_config}
\title{Creates a deployment configuration}
\usage{
create_deployment_config(deploymentConfigName,
  minimumHealthyHosts = NULL, trafficRoutingConfig = NULL,
  computePlatform = NULL)
}
\arguments{
\item{deploymentConfigName}{[required] The name of the deployment configuration to create.}

\item{minimumHealthyHosts}{The minimum number of healthy instances that should be available at any time during the deployment. There are two parameters expected in the input: type and value.

The type parameter takes either of the following values:
\itemize{
\item HOST\_COUNT: The value parameter represents the minimum number of healthy instances as an absolute value.
\item FLEET\_PERCENT: The value parameter represents the minimum number of healthy instances as a percentage of the total number of instances in the deployment. If you specify FLEET\_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instance and rounds up fractional instances.
}

The value parameter takes an integer.

For example, to set a minimum of 95% healthy instance, specify a type of FLEET\_PERCENT and a value of 95.}

\item{trafficRoutingConfig}{The configuration that specifies how the deployment traffic is routed.}

\item{computePlatform}{The destination platform type for the deployment (\code{Lambda} or \code{Server}>).}
}
\description{
Creates a deployment configuration.
}
\section{Accepted Parameters}{
\preformatted{create_deployment_config(
  deploymentConfigName = "string",
  minimumHealthyHosts = list(
    value = 123,
    type = "HOST_COUNT"|"FLEET_PERCENT"
  ),
  trafficRoutingConfig = list(
    type = "TimeBasedCanary"|"TimeBasedLinear"|"AllAtOnce",
    timeBasedCanary = list(
      canaryPercentage = 123,
      canaryInterval = 123
    ),
    timeBasedLinear = list(
      linearPercentage = 123,
      linearInterval = 123
    )
  ),
  computePlatform = "Server"|"Lambda"|"ECS"
)
}
}

