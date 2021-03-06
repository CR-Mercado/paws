% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.elasticbeanstalk_operations.R
\name{update_tags_for_resource}
\alias{update_tags_for_resource}
\title{Update the list of tags applied to an AWS Elastic Beanstalk resource}
\usage{
update_tags_for_resource(ResourceArn, TagsToAdd = NULL,
  TagsToRemove = NULL)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) of the resouce to be updated.

Must be the ARN of an Elastic Beanstalk environment.}

\item{TagsToAdd}{A list of tags to add or update.

If a key of an existing tag is added, the tag's value is updated.}

\item{TagsToRemove}{A list of tag keys to remove.

If a tag key doesn't exist, it is silently ignored.}
}
\description{
Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: \code{TagsToAdd} for tags to add or update, and \code{TagsToRemove}.
}
\details{
Currently, Elastic Beanstalk only supports tagging of Elastic Beanstalk environments. For details about environment tagging, see \href{http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.tagging.html}{Tagging Resources in Your Elastic Beanstalk Environment}.

If you create a custom IAM user policy to control permission to this operation, specify one of the following two virtual actions (or both) instead of the API operation name:

elasticbeanstalk:AddTags

:   Controls permission to call \code{UpdateTagsForResource} and pass a list of tags to add in the \code{TagsToAdd} parameter.

elasticbeanstalk:RemoveTags

:   Controls permission to call \code{UpdateTagsForResource} and pass a list of tag keys to remove in the \code{TagsToRemove} parameter.

For details about creating a custom user policy, see \href{http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies}{Creating a Custom User Policy}.
}
\section{Accepted Parameters}{
\preformatted{update_tags_for_resource(
  ResourceArn = "string",
  TagsToAdd = list(
    list(
      Key = "string",
      Value = "string"
    )
  ),
  TagsToRemove = list(
    "string"
  )
)
}
}

