% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudfront_operations.R
\name{list_distributions}
\alias{list_distributions}
\title{List distributions}
\usage{
list_distributions(Marker = NULL, MaxItems = NULL)
}
\arguments{
\item{Marker}{Use this when paginating results to indicate where to begin in your list of distributions. The results include distributions in the list that occur after the marker. To get the next page of results, set the \code{Marker} to the value of the \code{NextMarker} from the current page's response (which is also the ID of the last distribution on that page).}

\item{MaxItems}{The maximum number of distributions you want in the response body.}
}
\description{
List distributions.
}
\section{Accepted Parameters}{
\preformatted{list_distributions(
  Marker = "string",
  MaxItems = "string"
)
}
}

