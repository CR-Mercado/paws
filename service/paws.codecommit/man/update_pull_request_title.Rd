% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.codecommit_operations.R
\name{update_pull_request_title}
\alias{update_pull_request_title}
\title{Replaces the title of a pull request}
\usage{
update_pull_request_title(pullRequestId, title)
}
\arguments{
\item{pullRequestId}{[required] The system-generated ID of the pull request. To get this ID, use ListPullRequests.}

\item{title}{[required] The updated title of the pull request. This will replace the existing title.}
}
\description{
Replaces the title of a pull request.
}
\section{Accepted Parameters}{
\preformatted{update_pull_request_title(
  pullRequestId = "string",
  title = "string"
)
}
}

