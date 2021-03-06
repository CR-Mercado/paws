% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.pinpoint_operations.R
\name{update_sms_channel}
\alias{update_sms_channel}
\title{Update an SMS channel}
\usage{
update_sms_channel(ApplicationId, SMSChannelRequest)
}
\arguments{
\item{ApplicationId}{[required] The unique ID of your Amazon Pinpoint application.}

\item{SMSChannelRequest}{[required]}
}
\description{
Update an SMS channel.
}
\section{Accepted Parameters}{
\preformatted{update_sms_channel(
  ApplicationId = "string",
  SMSChannelRequest = list(
    Enabled = TRUE|FALSE,
    SenderId = "string",
    ShortCode = "string"
  )
)
}
}

