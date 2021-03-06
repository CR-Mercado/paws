% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.migrationhub_operations.R
\name{put_resource_attributes}
\alias{put_resource_attributes}
\title{Provides identifying details of the resource being migrated so that it can be associated in the Application Discovery Service (ADS)'s repository}
\usage{
put_resource_attributes(ProgressUpdateStream, MigrationTaskName,
  ResourceAttributeList, DryRun = NULL)
}
\arguments{
\item{ProgressUpdateStream}{[required] The name of the ProgressUpdateStream.}

\item{MigrationTaskName}{[required] Unique identifier that references the migration task.}

\item{ResourceAttributeList}{[required] Information about the resource that is being migrated. This data will be used to map the task to a resource in the Application Discovery Service (ADS)'s repository.

Takes the object array of \code{ResourceAttribute} where the \code{Type} field is reserved for the following values: \code{IPV4_ADDRESS | IPV6_ADDRESS | MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE | VM_NAME | VM_PATH | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER} where the identifying value can be a string up to 256 characters.
\itemize{
\item If any "VM" related value is set for a \code{ResourceAttribute} object, it is required that \code{VM_MANAGER_ID}, as a minimum, is always set. If \code{VM_MANAGER_ID} is not set, then all "VM" fields will be discarded and "VM" fields will not be used for matching the migration task to a server in Application Discovery Service (ADS)'s repository. See the \href{https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#API_PutResourceAttributes_Examples}{Example} section below for a use case of specifying "VM" related values.
\item If a server you are trying to match has multiple IP or MAC addresses, you should provide as many as you know in separate type/value pairs passed to the \code{ResourceAttributeList} parameter to maximize the chances of matching.
}}

\item{DryRun}{Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.}
}
\description{
Provides identifying details of the resource being migrated so that it can be associated in the Application Discovery Service (ADS)'s repository. This association occurs asynchronously after \code{PutResourceAttributes} returns.
}
\details{
\itemize{
\item Keep in mind that subsequent calls to PutResourceAttributes will override previously stored attributes. For example, if it is first called with a MAC address, but later, it is desired to \emph{add} an IP address, it will then be required to call it with \emph{both} the IP and MAC addresses to prevent overiding the MAC address.
\item Note the instructions regarding the special use case of the \href{https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#migrationhub-PutResourceAttributes-request-ResourceAttributeList}{ResourceAttributeList} parameter when specifying any "VM" related value.
}

Because this is an asynchronous call, it will always return 200, whether an association occurs or not. To confirm if an association was found based on the provided details, call \code{ListDiscoveredResources}.
}
\section{Accepted Parameters}{
\preformatted{put_resource_attributes(
  ProgressUpdateStream = "string",
  MigrationTaskName = "string",
  ResourceAttributeList = list(
    list(
      Type = "IPV4_ADDRESS"|"IPV6_ADDRESS"|"MAC_ADDRESS"|"FQDN"|"VM_MANAGER_ID"|"VM_MANAGED_OBJECT_REFERENCE"|"VM_NAME"|"VM_PATH"|"BIOS_ID"|"MOTHERBOARD_SERIAL_NUMBER",
      Value = "string"
    )
  ),
  DryRun = TRUE|FALSE
)
}
}

