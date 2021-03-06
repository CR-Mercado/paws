% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.pinpointemail_operations.R
\name{get_dedicated_ip}
\alias{get_dedicated_ip}
\title{Get information about a dedicated IP address, including the name of the dedicated IP pool that it's associated with, as well information about the automatic warm-up process for the address}
\usage{
get_dedicated_ip(Ip)
}
\arguments{
\item{Ip}{[required] The IP address that you want to obtain more information about. The value you specify has to be a dedicated IP address that's assocaited with your Amazon Pinpoint account.}
}
\description{
Get information about a dedicated IP address, including the name of the dedicated IP pool that it's associated with, as well information about the automatic warm-up process for the address.
}
\section{Accepted Parameters}{
\preformatted{get_dedicated_ip(
  Ip = "string"
)
}
}

