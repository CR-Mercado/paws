% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lightsail_operations.R
\name{get_relational_database_bundles}
\alias{get_relational_database_bundles}
\title{Returns the list of bundles that are available in Amazon Lightsail}
\usage{
get_relational_database_bundles(pageToken = NULL)
}
\arguments{
\item{pageToken}{A token used for advancing to a specific page of results for your \code{get relational database bundles} request.}
}
\description{
Returns the list of bundles that are available in Amazon Lightsail. A bundle describes the performance specifications for a database.
}
\details{
You can use a bundle ID to create a new database with explicit performance specifications.
}
\section{Accepted Parameters}{
\preformatted{get_relational_database_bundles(
  pageToken = "string"
)
}
}

