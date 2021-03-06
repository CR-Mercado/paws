% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.rds_operations.R
\name{add_tags_to_resource}
\alias{add_tags_to_resource}
\title{Adds metadata tags to an Amazon RDS resource}
\usage{
add_tags_to_resource(ResourceName, Tags)
}
\arguments{
\item{ResourceName}{[required] The Amazon RDS resource that the tags are added to. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see \href{http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing}{Constructing an RDS Amazon Resource Name (ARN)}.}

\item{Tags}{[required] The tags to be assigned to the Amazon RDS resource.}
}
\description{
Adds metadata tags to an Amazon RDS resource. These tags can also be used with cost allocation reporting to track cost associated with Amazon RDS resources, or used in a Condition statement in an IAM policy for Amazon RDS.
}
\details{
For an overview on tagging Amazon RDS resources, see \href{http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html}{Tagging Amazon RDS Resources}.
}
\section{Accepted Parameters}{
\preformatted{add_tags_to_resource(
  ResourceName = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

