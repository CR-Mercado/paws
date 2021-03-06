% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.workspaces_operations.R
\name{import_workspace_image}
\alias{import_workspace_image}
\title{Imports the specified Windows 7 or Windows 10 bring your own license (BYOL) image into Amazon WorkSpaces}
\usage{
import_workspace_image(Ec2ImageId, IngestionProcess, ImageName,
  ImageDescription)
}
\arguments{
\item{Ec2ImageId}{[required] The identifier of the EC2 image.}

\item{IngestionProcess}{[required] The ingestion process to be used when importing the image.}

\item{ImageName}{[required] The name of the WorkSpace image.}

\item{ImageDescription}{[required] The description of the WorkSpace image.}
}
\description{
Imports the specified Windows 7 or Windows 10 bring your own license (BYOL) image into Amazon WorkSpaces. The image must be an already licensed EC2 image that is in your AWS account, and you must own the image.
}
\section{Accepted Parameters}{
\preformatted{import_workspace_image(
  Ec2ImageId = "string",
  IngestionProcess = "BYOL_REGULAR"|"BYOL_GRAPHICS"|"BYOL_GRAPHICSPRO",
  ImageName = "string",
  ImageDescription = "string"
)
}
}

