% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lightsail_operations.R
\name{create_instances}
\alias{create_instances}
\title{Creates one or more Amazon Lightsail virtual private servers, or \emph{instances}}
\usage{
create_instances(instanceNames, availabilityZone, customImageName = NULL,
  blueprintId, bundleId, userData = NULL, keyPairName = NULL,
  tags = NULL)
}
\arguments{
\item{instanceNames}{[required] The names to use for your new Lightsail instances. Separate multiple values using quotation marks and commas, for example: \code{["MyFirstInstance","MySecondInstance"]}}

\item{availabilityZone}{[required] The Availability Zone in which to create your instance. Use the following format: \code{us-east-2a} (case sensitive). You can get a list of Availability Zones by using the \href{http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html}{get regions} operation. Be sure to add the \code{include Availability Zones} parameter to your request.}

\item{customImageName}{(Deprecated) The name for your custom image.

In releases prior to June 12, 2017, this parameter was ignored by the API. It is now deprecated.}

\item{blueprintId}{[required] The ID for a virtual private server image (e.g., \code{app_wordpress_4_4} or \code{app_lamp_7_0}). Use the get blueprints operation to return a list of available images (or \emph{blueprints}).}

\item{bundleId}{[required] The bundle of specification information for your virtual private server (or \emph{instance}), including the pricing plan (e.g., \code{micro_1_0}).}

\item{userData}{A launch script you can create that configures a server with additional user data. For example, you might want to run \code{apt-get -y update}.

Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use \code{yum}, Debian and Ubuntu use \code{apt-get}, and FreeBSD uses \code{pkg}. For a complete list, see the \href{https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image}{Dev Guide}.}

\item{keyPairName}{The name of your key pair.}

\item{tags}{The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the \code{tag resource} operation.}
}
\description{
Creates one or more Amazon Lightsail virtual private servers, or \emph{instances}. Create instances using active blueprints. Inactive blueprints are listed to support customers with existing instances but are not necessarily available for launch of new instances. Blueprints are marked inactive when they become outdated due to operating system updates or new application releases. Use the get blueprints operation to return a list of available blueprints.
}
\details{
The \code{create instances} operation supports tag-based access control via request tags. For more information, see the \href{https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags}{Lightsail Dev Guide}.
}
\section{Accepted Parameters}{
\preformatted{create_instances(
  instanceNames = list(
    "string"
  ),
  availabilityZone = "string",
  customImageName = "string",
  blueprintId = "string",
  bundleId = "string",
  userData = "string",
  keyPairName = "string",
  tags = list(
    list(
      key = "string",
      value = "string"
    )
  )
)
}
}

