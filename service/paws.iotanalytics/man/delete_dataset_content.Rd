% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.iotanalytics_operations.R
\name{delete_dataset_content}
\alias{delete_dataset_content}
\title{Deletes the content of the specified data set}
\usage{
delete_dataset_content(datasetName, versionId = NULL)
}
\arguments{
\item{datasetName}{[required] The name of the data set whose content is deleted.}

\item{versionId}{The version of the data set whose content is deleted. You can also use the strings "\$LATEST" or "\$LATEST\_SUCCEEDED" to delete the latest or latest successfully completed data set. If not specified, "\$LATEST\_SUCCEEDED" is the default.}
}
\description{
Deletes the content of the specified data set.
}
\section{Accepted Parameters}{
\preformatted{delete_dataset_content(
  datasetName = "string",
  versionId = "string"
)
}
}

