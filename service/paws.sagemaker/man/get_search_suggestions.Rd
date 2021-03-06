% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.sagemaker_operations.R
\name{get_search_suggestions}
\alias{get_search_suggestions}
\title{An auto-complete API for the search functionality in the Amazon SageMaker console}
\usage{
get_search_suggestions(Resource, SuggestionQuery = NULL)
}
\arguments{
\item{Resource}{[required] The name of the Amazon SageMaker resource to Search for. The only valid \code{Resource} value is \code{TrainingJob}.}

\item{SuggestionQuery}{Limits the property names that are included in the response.}
}
\description{
An auto-complete API for the search functionality in the Amazon SageMaker console. It returns suggestions of possible matches for the property name to use in \code{Search} queries. Provides suggestions for \code{HyperParameters}, \code{Tags}, and \code{Metrics}.
}
\section{Accepted Parameters}{
\preformatted{get_search_suggestions(
  Resource = "TrainingJob",
  SuggestionQuery = list(
    PropertyNameQuery = list(
      PropertyNameHint = "string"
    )
  )
)
}
}

