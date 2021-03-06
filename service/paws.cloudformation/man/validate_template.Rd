% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudformation_operations.R
\name{validate_template}
\alias{validate_template}
\title{Validates a specified template}
\usage{
validate_template(TemplateBody = NULL, TemplateURL = NULL)
}
\arguments{
\item{TemplateBody}{Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to \href{http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html}{Template Anatomy} in the AWS CloudFormation User Guide.

Conditional: You must pass \code{TemplateURL} or \code{TemplateBody}. If both are passed, only \code{TemplateBody} is used.}

\item{TemplateURL}{Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, go to \href{http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html}{Template Anatomy} in the AWS CloudFormation User Guide.

Conditional: You must pass \code{TemplateURL} or \code{TemplateBody}. If both are passed, only \code{TemplateBody} is used.}
}
\description{
Validates a specified template. AWS CloudFormation first checks if the template is valid JSON. If it isn't, AWS CloudFormation checks if the template is valid YAML. If both these checks fail, AWS CloudFormation returns a template validation error.
}
\section{Accepted Parameters}{
\preformatted{validate_template(
  TemplateBody = "string",
  TemplateURL = "string"
)
}
}

