% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lightsail_operations.R
\name{get_disks}
\alias{get_disks}
\title{Returns information about all block storage disks in your AWS account and region}
\usage{
get_disks(pageToken = NULL)
}
\arguments{
\item{pageToken}{A token used for advancing to the next page of results from your GetDisks request.}
}
\description{
Returns information about all block storage disks in your AWS account and region.
}
\details{
If you are describing a long list of disks, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.
}
\section{Accepted Parameters}{
\preformatted{get_disks(
  pageToken = "string"
)
}
}

