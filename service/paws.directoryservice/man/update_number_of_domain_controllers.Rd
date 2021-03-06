% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.directoryservice_operations.R
\name{update_number_of_domain_controllers}
\alias{update_number_of_domain_controllers}
\title{Adds or removes domain controllers to or from the directory}
\usage{
update_number_of_domain_controllers(DirectoryId, DesiredNumber)
}
\arguments{
\item{DirectoryId}{[required] Identifier of the directory to which the domain controllers will be added or removed.}

\item{DesiredNumber}{[required] The number of domain controllers desired in the directory.}
}
\description{
Adds or removes domain controllers to or from the directory. Based on the difference between current value and new value (provided through this API call), domain controllers will be added or removed. It may take up to 45 minutes for any new domain controllers to become fully active once the requested number of domain controllers is updated. During this time, you cannot make another update request.
}
\section{Accepted Parameters}{
\preformatted{update_number_of_domain_controllers(
  DirectoryId = "string",
  DesiredNumber = 123
)
}
}

