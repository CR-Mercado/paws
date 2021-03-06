% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.rekognition_operations.R
\name{start_face_search}
\alias{start_face_search}
\title{Starts the asynchronous search for faces in a collection that match the faces of persons detected in a stored video}
\usage{
start_face_search(Video, ClientRequestToken = NULL,
  FaceMatchThreshold = NULL, CollectionId, NotificationChannel = NULL,
  JobTag = NULL)
}
\arguments{
\item{Video}{[required] The video you want to search. The video must be stored in an Amazon S3 bucket.}

\item{ClientRequestToken}{Idempotent token used to identify the start request. If you use the same token with multiple \code{StartFaceSearch} requests, the same \code{JobId} is returned. Use \code{ClientRequestToken} to prevent the same job from being accidently started more than once.}

\item{FaceMatchThreshold}{The minimum confidence in the person match to return. For example, don't return any matches where confidence in matches is less than 70%.}

\item{CollectionId}{[required] ID of the collection that contains the faces you want to search for.}

\item{NotificationChannel}{The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the search.}

\item{JobTag}{Unique identifier you specify to identify the job in the completion status published to the Amazon Simple Notification Service topic.}
}
\description{
Starts the asynchronous search for faces in a collection that match the faces of persons detected in a stored video.
}
\details{
The video must be stored in an Amazon S3 bucket. Use Video to specify the bucket name and the filename of the video. \code{StartFaceSearch} returns a job identifier (\code{JobId}) which you use to get the search results once the search has completed. When searching is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in \code{NotificationChannel}. To get the search results, first check that the status value published to the Amazon SNS topic is \code{SUCCEEDED}. If so, call GetFaceSearch and pass the job identifier (\code{JobId}) from the initial call to \code{StartFaceSearch}. For more information, see procedure-person-search-videos.
}
\section{Accepted Parameters}{
\preformatted{start_face_search(
  Video = list(
    S3Object = list(
      Bucket = "string",
      Name = "string",
      Version = "string"
    )
  ),
  ClientRequestToken = "string",
  FaceMatchThreshold = 123.0,
  CollectionId = "string",
  NotificationChannel = list(
    SNSTopicArn = "string",
    RoleArn = "string"
  ),
  JobTag = "string"
)
}
}

