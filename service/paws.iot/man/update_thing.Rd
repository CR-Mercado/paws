% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iot_operations.R
\name{update_thing}
\alias{update_thing}
\title{Updates the data for a thing}
\usage{
update_thing(thingName, thingTypeName = NULL, attributePayload = NULL,
  expectedVersion = NULL, removeThingType = NULL)
}
\arguments{
\item{thingName}{[required] The name of the thing to update.}

\item{thingTypeName}{The name of the thing type.}

\item{attributePayload}{A list of thing attributes, a JSON string containing name-value pairs. For example:

\code{{\"attributes\":{\"name1\":\"value2\"}}}

This data is used to add new attributes or update existing attributes.}

\item{expectedVersion}{The expected version of the thing record in the registry. If the version of the record in the registry does not match the expected version specified in the request, the \code{UpdateThing} request is rejected with a \code{VersionConflictException}.}

\item{removeThingType}{Remove a thing type association. If \strong{true}, the association is removed.}
}
\description{
Updates the data for a thing.
}
\section{Accepted Parameters}{
\preformatted{update_thing(
  thingName = "string",
  thingTypeName = "string",
  attributePayload = list(
    attributes = list(
      "string"
    ),
    merge = TRUE|FALSE
  ),
  expectedVersion = 123,
  removeThingType = TRUE|FALSE
)
}
}

