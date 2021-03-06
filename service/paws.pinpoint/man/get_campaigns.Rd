% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.pinpoint_operations.R
\name{get_campaigns}
\alias{get_campaigns}
\title{Returns information about your campaigns}
\usage{
get_campaigns(ApplicationId, PageSize = NULL, Token = NULL)
}
\arguments{
\item{ApplicationId}{[required] The unique ID of your Amazon Pinpoint application.}

\item{PageSize}{The number of entries you want on each page in the response.}

\item{Token}{The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.}
}
\description{
Returns information about your campaigns.
}
\section{Accepted Parameters}{
\preformatted{get_campaigns(
  ApplicationId = "string",
  PageSize = "string",
  Token = "string"
)
}
}

