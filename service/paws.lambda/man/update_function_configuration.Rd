% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lambda_operations.R
\name{update_function_configuration}
\alias{update_function_configuration}
\title{Modify the version-specifc settings of a Lambda function}
\usage{
update_function_configuration(FunctionName, Role = NULL,
  Handler = NULL, Description = NULL, Timeout = NULL,
  MemorySize = NULL, VpcConfig = NULL, Environment = NULL,
  Runtime = NULL, DeadLetterConfig = NULL, KMSKeyArn = NULL,
  TracingConfig = NULL, RevisionId = NULL, Layers = NULL)
}
\arguments{
\item{FunctionName}{[required] The name of the Lambda function.

\strong{Name formats}
\itemize{
\item \strong{Function name} - \code{my-function}.
\item \strong{Function ARN} - \code{arn:aws:lambda:us-west-2:123456789012:function:my-function}.
\item \strong{Partial ARN} - \code{123456789012:function:my-function}.
}

The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.}

\item{Role}{The Amazon Resource Name (ARN) of the IAM role that Lambda will assume when it executes your function.}

\item{Handler}{The function that Lambda calls to begin executing your function. For Node.js, it is the \code{module-name.export} value in your function.}

\item{Description}{A short user-defined function description. AWS Lambda does not use this value. Assign a meaningful description as you see fit.}

\item{Timeout}{The amount of time that Lambda allows a function to run before terminating it. The default is 3 seconds. The maximum allowed value is 900 seconds.}

\item{MemorySize}{The amount of memory, in MB, your Lambda function is given. AWS Lambda uses this memory size to infer the amount of CPU allocated to your function. Your function use-case determines your CPU and memory requirements. For example, a database operation might need less memory compared to an image processing function. The default value is 128 MB. The value must be a multiple of 64 MB.}

\item{VpcConfig}{Specify security groups and subnets in a VPC to which your Lambda function needs access.}

\item{Environment}{The parent object that contains your environment's configuration settings.}

\item{Runtime}{The runtime version for the function.}

\item{DeadLetterConfig}{A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see \href{http://docs.aws.amazon.com/lambda/latest/dg/dlq.html}{Dead Letter Queues}.}

\item{KMSKeyArn}{The Amazon Resource Name (ARN) of the KMS key used to encrypt your function's environment variables. If you elect to use the AWS Lambda default service key, pass in an empty string ("") for this parameter.}

\item{TracingConfig}{Set \code{Mode} to \code{Active} to sample and trace a subset of incoming requests with AWS X-Ray.}

\item{RevisionId}{Only update the function if the revision ID matches the ID specified. Use this option to avoid modifying a function that has changed since you last read it.}

\item{Layers}{A list of \href{http://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html}{function layers} to add to the function's execution environment.}
}
\description{
Modify the version-specifc settings of a Lambda function.
}
\details{
These settings can vary between versions of a function and are locked when you publish a version. You cannot modify the configuration of a published version, only the unpublished version.

To configure function concurrency, use PutFunctionConcurrency. To grant invoke permissions to an account or AWS service, use AddPermission.
}
\section{Accepted Parameters}{
\preformatted{update_function_configuration(
  FunctionName = "string",
  Role = "string",
  Handler = "string",
  Description = "string",
  Timeout = 123,
  MemorySize = 123,
  VpcConfig = list(
    SubnetIds = list(
      "string"
    ),
    SecurityGroupIds = list(
      "string"
    )
  ),
  Environment = list(
    Variables = list(
      "string"
    )
  ),
  Runtime = "nodejs"|"nodejs4.3"|"nodejs6.10"|"nodejs8.10"|"java8"|"python2.7"|"python3.6"|"python3.7"|"dotnetcore1.0"|"dotnetcore2.0"|"dotnetcore2.1"|"nodejs4.3-edge"|"go1.x"|"ruby2.5"|"provided",
  DeadLetterConfig = list(
    TargetArn = "string"
  ),
  KMSKeyArn = "string",
  TracingConfig = list(
    Mode = "Active"|"PassThrough"
  ),
  RevisionId = "string",
  Layers = list(
    "string"
  )
)
}
}

\examples{
# This operation updates a Lambda function's configuration
\donttest{update_function_configuration(
  Description = "",
  FunctionName = "myFunction",
  Handler = "index.handler",
  MemorySize = 128L,
  Role = "arn:aws:iam::123456789012:role/lambda_basic_execution",
  Runtime = "python2.7",
  Timeout = 123L,
  VpcConfig = structure(
    list(),
    .Names = character(
      0
    )
  )
)}

}
