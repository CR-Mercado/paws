% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.mturk_operations.R
\name{list_hi_ts}
\alias{list_hi_ts}
\title{The ListHITs operation returns all of a Requester's HITs}
\usage{
list_hi_ts(NextToken = NULL, MaxResults = NULL)
}
\arguments{
\item{NextToken}{Pagination token}

\item{MaxResults}{}
}
\description{
The \code{ListHITs} operation returns all of a Requester's HITs. The operation returns HITs of any status, except for HITs that have been deleted of with the DeleteHIT operation or that have been auto-deleted.
}
\section{Accepted Parameters}{
\preformatted{list_hi_ts(
  NextToken = "string",
  MaxResults = 123
)
}
}

