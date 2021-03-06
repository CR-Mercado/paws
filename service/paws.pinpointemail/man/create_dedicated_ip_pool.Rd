% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.pinpointemail_operations.R
\name{create_dedicated_ip_pool}
\alias{create_dedicated_ip_pool}
\title{Create a new pool of dedicated IP addresses}
\usage{
create_dedicated_ip_pool(PoolName)
}
\arguments{
\item{PoolName}{[required] The name of the dedicated IP pool.}
}
\description{
Create a new pool of dedicated IP addresses. A pool can include one or more dedicated IP addresses that are associated with your Amazon Pinpoint account. You can associate a pool with a configuration set. When you send an email that uses that configuration set, Amazon Pinpoint sends it using only the IP addresses in the associated pool.
}
\section{Accepted Parameters}{
\preformatted{create_dedicated_ip_pool(
  PoolName = "string"
)
}
}

