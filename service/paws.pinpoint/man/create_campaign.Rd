% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.pinpoint_operations.R
\name{create_campaign}
\alias{create_campaign}
\title{Creates or updates a campaign}
\usage{
create_campaign(ApplicationId, WriteCampaignRequest)
}
\arguments{
\item{ApplicationId}{[required] The unique ID of your Amazon Pinpoint application.}

\item{WriteCampaignRequest}{[required]}
}
\description{
Creates or updates a campaign.
}
\section{Accepted Parameters}{
\preformatted{create_campaign(
  ApplicationId = "string",
  WriteCampaignRequest = list(
    AdditionalTreatments = list(
      list(
        MessageConfiguration = list(
          ADMMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          APNSMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          BaiduMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          DefaultMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          EmailMessage = list(
            Body = "string",
            FromAddress = "string",
            HtmlBody = "string",
            Title = "string"
          ),
          GCMMessage = list(
            Action = "OPEN_APP"|"DEEP_LINK"|"URL",
            Body = "string",
            ImageIconUrl = "string",
            ImageSmallIconUrl = "string",
            ImageUrl = "string",
            JsonBody = "string",
            MediaUrl = "string",
            RawContent = "string",
            SilentPush = TRUE|FALSE,
            TimeToLive = 123,
            Title = "string",
            Url = "string"
          ),
          SMSMessage = list(
            Body = "string",
            MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
            SenderId = "string"
          )
        ),
        Schedule = list(
          EndTime = "string",
          EventFilter = list(
            Dimensions = list(
              Attributes = list(
                list(
                  AttributeType = "INCLUSIVE"|"EXCLUSIVE",
                  Values = list(
                    "string"
                  )
                )
              ),
              EventType = list(
                DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                Values = list(
                  "string"
                )
              ),
              Metrics = list(
                list(
                  ComparisonOperator = "string",
                  Value = 123.0
                )
              )
            ),
            FilterType = "SYSTEM"|"ENDPOINT"
          ),
          Frequency = "ONCE"|"HOURLY"|"DAILY"|"WEEKLY"|"MONTHLY"|"EVENT",
          IsLocalTime = TRUE|FALSE,
          QuietTime = list(
            End = "string",
            Start = "string"
          ),
          StartTime = "string",
          Timezone = "string"
        ),
        SizePercent = 123,
        TreatmentDescription = "string",
        TreatmentName = "string"
      )
    ),
    Description = "string",
    HoldoutPercent = 123,
    Hook = list(
      LambdaFunctionName = "string",
      Mode = "DELIVERY"|"FILTER",
      WebUrl = "string"
    ),
    IsPaused = TRUE|FALSE,
    Limits = list(
      Daily = 123,
      MaximumDuration = 123,
      MessagesPerSecond = 123,
      Total = 123
    ),
    MessageConfiguration = list(
      ADMMessage = list(
        Action = "OPEN_APP"|"DEEP_LINK"|"URL",
        Body = "string",
        ImageIconUrl = "string",
        ImageSmallIconUrl = "string",
        ImageUrl = "string",
        JsonBody = "string",
        MediaUrl = "string",
        RawContent = "string",
        SilentPush = TRUE|FALSE,
        TimeToLive = 123,
        Title = "string",
        Url = "string"
      ),
      APNSMessage = list(
        Action = "OPEN_APP"|"DEEP_LINK"|"URL",
        Body = "string",
        ImageIconUrl = "string",
        ImageSmallIconUrl = "string",
        ImageUrl = "string",
        JsonBody = "string",
        MediaUrl = "string",
        RawContent = "string",
        SilentPush = TRUE|FALSE,
        TimeToLive = 123,
        Title = "string",
        Url = "string"
      ),
      BaiduMessage = list(
        Action = "OPEN_APP"|"DEEP_LINK"|"URL",
        Body = "string",
        ImageIconUrl = "string",
        ImageSmallIconUrl = "string",
        ImageUrl = "string",
        JsonBody = "string",
        MediaUrl = "string",
        RawContent = "string",
        SilentPush = TRUE|FALSE,
        TimeToLive = 123,
        Title = "string",
        Url = "string"
      ),
      DefaultMessage = list(
        Action = "OPEN_APP"|"DEEP_LINK"|"URL",
        Body = "string",
        ImageIconUrl = "string",
        ImageSmallIconUrl = "string",
        ImageUrl = "string",
        JsonBody = "string",
        MediaUrl = "string",
        RawContent = "string",
        SilentPush = TRUE|FALSE,
        TimeToLive = 123,
        Title = "string",
        Url = "string"
      ),
      EmailMessage = list(
        Body = "string",
        FromAddress = "string",
        HtmlBody = "string",
        Title = "string"
      ),
      GCMMessage = list(
        Action = "OPEN_APP"|"DEEP_LINK"|"URL",
        Body = "string",
        ImageIconUrl = "string",
        ImageSmallIconUrl = "string",
        ImageUrl = "string",
        JsonBody = "string",
        MediaUrl = "string",
        RawContent = "string",
        SilentPush = TRUE|FALSE,
        TimeToLive = 123,
        Title = "string",
        Url = "string"
      ),
      SMSMessage = list(
        Body = "string",
        MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
        SenderId = "string"
      )
    ),
    Name = "string",
    Schedule = list(
      EndTime = "string",
      EventFilter = list(
        Dimensions = list(
          Attributes = list(
            list(
              AttributeType = "INCLUSIVE"|"EXCLUSIVE",
              Values = list(
                "string"
              )
            )
          ),
          EventType = list(
            DimensionType = "INCLUSIVE"|"EXCLUSIVE",
            Values = list(
              "string"
            )
          ),
          Metrics = list(
            list(
              ComparisonOperator = "string",
              Value = 123.0
            )
          )
        ),
        FilterType = "SYSTEM"|"ENDPOINT"
      ),
      Frequency = "ONCE"|"HOURLY"|"DAILY"|"WEEKLY"|"MONTHLY"|"EVENT",
      IsLocalTime = TRUE|FALSE,
      QuietTime = list(
        End = "string",
        Start = "string"
      ),
      StartTime = "string",
      Timezone = "string"
    ),
    SegmentId = "string",
    SegmentVersion = 123,
    TreatmentDescription = "string",
    TreatmentName = "string"
  )
)
}
}

