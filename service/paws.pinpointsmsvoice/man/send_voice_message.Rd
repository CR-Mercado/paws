% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.pinpointsmsvoice_operations.R
\name{send_voice_message}
\alias{send_voice_message}
\title{Create a new voice message and send it to a recipient's phone number}
\usage{
send_voice_message(CallerId = NULL, ConfigurationSetName = NULL,
  Content = NULL, DestinationPhoneNumber = NULL,
  OriginationPhoneNumber = NULL)
}
\arguments{
\item{CallerId}{The phone number that appears on recipients' devices when they receive the message.}

\item{ConfigurationSetName}{The name of the configuration set that you want to use to send the message.}

\item{Content}{}

\item{DestinationPhoneNumber}{The phone number that you want to send the voice message to.}

\item{OriginationPhoneNumber}{The phone number that Amazon Pinpoint should use to send the voice message. This isn't necessarily the phone number that appears on recipients' devices when they receive the message, because you can specify a CallerId parameter in the request.}
}
\description{
Create a new voice message and send it to a recipient's phone number.
}
\section{Accepted Parameters}{
\preformatted{send_voice_message(
  CallerId = "string",
  ConfigurationSetName = "string",
  Content = list(
    CallInstructionsMessage = list(
      Text = "string"
    ),
    PlainTextMessage = list(
      LanguageCode = "string",
      Text = "string",
      VoiceId = "string"
    ),
    SSMLMessage = list(
      LanguageCode = "string",
      Text = "string",
      VoiceId = "string"
    )
  ),
  DestinationPhoneNumber = "string",
  OriginationPhoneNumber = "string"
)
}
}

