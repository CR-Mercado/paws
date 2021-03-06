% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.health_operations.R
\name{describe_entity_aggregates}
\alias{describe_entity_aggregates}
\title{Returns the number of entities that are affected by each of the specified events}
\usage{
describe_entity_aggregates(eventArns = NULL)
}
\arguments{
\item{eventArns}{A list of event ARNs (unique identifiers). For example: \code{"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"}}
}
\description{
Returns the number of entities that are affected by each of the specified events. If no events are specified, the counts of all affected entities are returned.
}
\section{Accepted Parameters}{
\preformatted{describe_entity_aggregates(
  eventArns = list(
    "string"
  )
)
}
}

