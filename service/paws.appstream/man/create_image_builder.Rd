% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.appstream_operations.R
\name{create_image_builder}
\alias{create_image_builder}
\title{Creates an image builder}
\usage{
create_image_builder(Name, ImageName = NULL, ImageArn = NULL,
  InstanceType, Description = NULL, DisplayName = NULL,
  VpcConfig = NULL, EnableDefaultInternetAccess = NULL,
  DomainJoinInfo = NULL, AppstreamAgentVersion = NULL, Tags = NULL)
}
\arguments{
\item{Name}{[required] A unique name for the image builder.}

\item{ImageName}{The name of the image used to create the image builder.}

\item{ImageArn}{The ARN of the public, private, or shared image to use.}

\item{InstanceType}{[required] The instance type to use when launching the image builder.}

\item{Description}{The description to display.}

\item{DisplayName}{The image builder name to display.}

\item{VpcConfig}{The VPC configuration for the image builder. You can specify only one subnet.}

\item{EnableDefaultInternetAccess}{Enables or disables default internet access for the image builder.}

\item{DomainJoinInfo}{The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain.}

\item{AppstreamAgentVersion}{The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST].}

\item{Tags}{The tags to associate with the image builder. A tag is a key-value pair (the value is optional). For example, Environment=Test, or, if you do not specify a value, Environment=.

If you do not specify a value, we set the value to an empty string.

For more information about tags, see \href{http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html}{Tagging Your Resources} in the \emph{Amazon AppStream 2.0 Developer Guide}.}
}
\description{
Creates an image builder. An image builder is a virtual machine that is used to create an image.
}
\details{
The initial state of the builder is \code{PENDING}. When it is ready, the state is \code{RUNNING}.
}
\section{Accepted Parameters}{
\preformatted{create_image_builder(
  Name = "string",
  ImageName = "string",
  ImageArn = "string",
  InstanceType = "string",
  Description = "string",
  DisplayName = "string",
  VpcConfig = list(
    SubnetIds = list(
      "string"
    ),
    SecurityGroupIds = list(
      "string"
    )
  ),
  EnableDefaultInternetAccess = TRUE|FALSE,
  DomainJoinInfo = list(
    DirectoryName = "string",
    OrganizationalUnitDistinguishedName = "string"
  ),
  AppstreamAgentVersion = "string",
  Tags = list(
    "string"
  )
)
}
}

