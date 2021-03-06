% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.sagemaker_operations.R
\name{update_notebook_instance_lifecycle_config}
\alias{update_notebook_instance_lifecycle_config}
\title{Updates a notebook instance lifecycle configuration created with the CreateNotebookInstanceLifecycleConfig API}
\usage{

  update_notebook_instance_lifecycle_config(NotebookInstanceLifecycleConfigName,
  OnCreate = NULL, OnStart = NULL)
}
\arguments{
\item{NotebookInstanceLifecycleConfigName}{[required] The name of the lifecycle configuration.}

\item{OnCreate}{The shell script that runs only once, when you create a notebook instance}

\item{OnStart}{The shell script that runs every time you start a notebook instance, including when you create the notebook instance.}
}
\description{
Updates a notebook instance lifecycle configuration created with the CreateNotebookInstanceLifecycleConfig API.
}
\section{Accepted Parameters}{
\preformatted{update_notebook_instance_lifecycle_config(
  NotebookInstanceLifecycleConfigName = "string",
  OnCreate = list(
    list(
      Content = "string"
    )
  ),
  OnStart = list(
    list(
      Content = "string"
    )
  )
)
}
}

