% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.ec2_operations.R
\name{allocate_hosts}
\alias{allocate_hosts}
\title{Allocates a Dedicated Host to your account}
\usage{
allocate_hosts(AutoPlacement = NULL, AvailabilityZone,
  ClientToken = NULL, InstanceType, Quantity, TagSpecifications = NULL)
}
\arguments{
\item{AutoPlacement}{This is enabled by default. This property allows instances to be automatically placed onto available Dedicated Hosts, when you are launching instances without specifying a host ID.

Default: Enabled}

\item{AvailabilityZone}{[required] The Availability Zone for the Dedicated Hosts.}

\item{ClientToken}{Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html}{How to Ensure Idempotency} in the \emph{Amazon Elastic Compute Cloud User Guide}.}

\item{InstanceType}{[required] Specify the instance type for which to configure your Dedicated Hosts. When you specify the instance type, that is the only instance type that you can launch onto that host.}

\item{Quantity}{[required] The number of Dedicated Hosts to allocate to your account with these parameters.}

\item{TagSpecifications}{The tags to apply to the Dedicated Host during creation.}
}
\description{
Allocates a Dedicated Host to your account. At a minimum, specify the instance size type, Availability Zone, and quantity of hosts to allocate.
}
\section{Accepted Parameters}{
\preformatted{allocate_hosts(
  AutoPlacement = "on"|"off",
  AvailabilityZone = "string",
  ClientToken = "string",
  InstanceType = "string",
  Quantity = 123,
  TagSpecifications = list(
    list(
      ResourceType = "customer-gateway"|"dedicated-host"|"dhcp-options"|"elastic-ip"|"fleet"|"fpga-image"|"image"|"instance"|"internet-gateway"|"launch-template"|"natgateway"|"network-acl"|"network-interface"|"reserved-instances"|"route-table"|"security-group"|"snapshot"|"spot-instances-request"|"subnet"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-route-table"|"volume"|"vpc"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
  )
)
}
}

