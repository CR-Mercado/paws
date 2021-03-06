% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.comprehend_operations.R
\name{start_topics_detection_job}
\alias{start_topics_detection_job}
\title{Starts an asynchronous topic detection job}
\usage{
start_topics_detection_job(InputDataConfig, OutputDataConfig,
  DataAccessRoleArn, JobName = NULL, NumberOfTopics = NULL,
  ClientRequestToken = NULL)
}
\arguments{
\item{InputDataConfig}{[required] Specifies the format and location of the input data for the job.}

\item{OutputDataConfig}{[required] Specifies where to send the output files. The output is a compressed archive with two files, \code{topic-terms.csv} that lists the terms associated with each topic, and \code{doc-topics.csv} that lists the documents associated with each topic}

\item{DataAccessRoleArn}{[required] The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see \url{https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions}.}

\item{JobName}{The identifier of the job.}

\item{NumberOfTopics}{The number of topics to detect.}

\item{ClientRequestToken}{A unique identifier for the request. If you do not set the client request token, Amazon Comprehend generates one.}
}
\description{
Starts an asynchronous topic detection job. Use the \code{DescribeTopicDetectionJob} operation to track the status of a job.
}
\section{Accepted Parameters}{
\preformatted{start_topics_detection_job(
  InputDataConfig = list(
    S3Uri = "string",
    InputFormat = "ONE_DOC_PER_FILE"|"ONE_DOC_PER_LINE"
  ),
  OutputDataConfig = list(
    S3Uri = "string"
  ),
  DataAccessRoleArn = "string",
  JobName = "string",
  NumberOfTopics = 123,
  ClientRequestToken = "string"
)
}
}

