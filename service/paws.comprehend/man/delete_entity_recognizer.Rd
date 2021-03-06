% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.comprehend_operations.R
\name{delete_entity_recognizer}
\alias{delete_entity_recognizer}
\title{Deletes an entity recognizer}
\usage{
delete_entity_recognizer(EntityRecognizerArn)
}
\arguments{
\item{EntityRecognizerArn}{[required] The Amazon Resource Name (ARN) that identifies the entity recognizer.}
}
\description{
Deletes an entity recognizer.
}
\details{
Only those recognizers that are in terminated states (IN\_ERROR, TRAINED) will be deleted. If an active inference job is using the model, a \code{ResourceInUseException} will be returned.

This is an asynchronous action that puts the recognizer into a DELETING state, and it is then removed by a background job. Once removed, the recognizer disappears from your account and is no longer available for use.
}
\section{Accepted Parameters}{
\preformatted{delete_entity_recognizer(
  EntityRecognizerArn = "string"
)
}
}

