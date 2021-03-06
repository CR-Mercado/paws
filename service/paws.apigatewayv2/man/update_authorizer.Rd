% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.apigatewayv2_operations.R
\name{update_authorizer}
\alias{update_authorizer}
\title{Updates an Authorizer}
\usage{
update_authorizer(ApiId, AuthorizerCredentialsArn = NULL, AuthorizerId,
  AuthorizerResultTtlInSeconds = NULL, AuthorizerType = NULL,
  AuthorizerUri = NULL, IdentitySource = NULL,
  IdentityValidationExpression = NULL, Name = NULL,
  ProviderArns = NULL)
}
\arguments{
\item{ApiId}{[required] The API identifier.}

\item{AuthorizerCredentialsArn}{Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.}

\item{AuthorizerId}{[required] The authorizer identifier.}

\item{AuthorizerResultTtlInSeconds}{The time to live (TTL), in seconds, of cached authorizer results. If it is zero, authorization caching is disabled. If it is greater than zero, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.}

\item{AuthorizerType}{The authorizer type. Currently the only valid value is REQUEST, for a Lambda function using incoming request parameters.}

\item{AuthorizerUri}{The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account\_id}:function:{lambda\_function\_name}/invocations. In general, the URI has this form: arn:aws:apigateway:{region}:lambda:path/{service\_api} , where {region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations.}

\item{IdentitySource}{The identity source for which authorization is requested.

For the REQUEST authorizer, this is required when authorization caching is enabled. The value is a comma-separated string of one or more mapping expressions of the specified request parameters. For example, if an Auth header, a Name query string parameter are defined as identity sources, this value is \$method.request.header.Auth, \$method.request.querystring.Name. These parameters will be used to derive the authorization caching key and to perform runtime validation of the REQUEST authorizer by verifying all of the identity-related request parameters are present, not null and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized response without calling the Lambda function. The valid value is a string of comma-separated mapping expressions of the specified request parameters. When the authorization caching is not enabled, this property is optional.}

\item{IdentityValidationExpression}{The validation expression does not apply to the REQUEST authorizer.}

\item{Name}{The name of the authorizer.}

\item{ProviderArns}{For REQUEST authorizer, this is not defined.}
}
\description{
Updates an Authorizer.
}
\section{Accepted Parameters}{
\preformatted{update_authorizer(
  ApiId = "string",
  AuthorizerCredentialsArn = "string",
  AuthorizerId = "string",
  AuthorizerResultTtlInSeconds = 123,
  AuthorizerType = "REQUEST",
  AuthorizerUri = "string",
  IdentitySource = list(
    "string"
  ),
  IdentityValidationExpression = "string",
  Name = "string",
  ProviderArns = list(
    "string"
  )
)
}
}

