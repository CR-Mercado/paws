% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.greengrass_operations.R
\name{create_core_definition}
\alias{create_core_definition}
\title{Creates a core definition}
\usage{
create_core_definition(AmznClientToken = NULL, InitialVersion = NULL,
  Name = NULL)
}
\arguments{
\item{AmznClientToken}{A client token used to correlate requests and responses.}

\item{InitialVersion}{Information about the initial version of the core definition.}

\item{Name}{The name of the core definition.}
}
\description{
Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each contain exactly one Greengrass core.
}
\section{Accepted Parameters}{
\preformatted{create_core_definition(
  AmznClientToken = "string",
  InitialVersion = list(
    Cores = list(
      list(
        CertificateArn = "string",
        Id = "string",
        SyncShadow = TRUE|FALSE,
        ThingArn = "string"
      )
    )
  ),
  Name = "string"
)
}
}

