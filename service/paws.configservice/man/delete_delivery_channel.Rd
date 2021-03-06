% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.configservice_operations.R
\name{delete_delivery_channel}
\alias{delete_delivery_channel}
\title{Deletes the delivery channel}
\usage{
delete_delivery_channel(DeliveryChannelName)
}
\arguments{
\item{DeliveryChannelName}{[required] The name of the delivery channel to delete.}
}
\description{
Deletes the delivery channel.
}
\details{
Before you can delete the delivery channel, you must stop the configuration recorder by using the StopConfigurationRecorder action.
}
\section{Accepted Parameters}{
\preformatted{delete_delivery_channel(
  DeliveryChannelName = "string"
)
}
}

