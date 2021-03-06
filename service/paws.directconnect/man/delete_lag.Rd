% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.directconnect_operations.R
\name{delete_lag}
\alias{delete_lag}
\title{Deletes the specified link aggregation group (LAG)}
\usage{
delete_lag(lagId)
}
\arguments{
\item{lagId}{[required] The ID of the LAG.}
}
\description{
Deletes the specified link aggregation group (LAG). You cannot delete a LAG if it has active virtual interfaces or hosted connections.
}
\section{Accepted Parameters}{
\preformatted{delete_lag(
  lagId = "string"
)
}
}

