% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lexmodelbuildingservice_operations.R
\name{get_bot_channel_association}
\alias{get_bot_channel_association}
\title{Returns information about the association between an Amazon Lex bot and a messaging platform}
\usage{
get_bot_channel_association(name, botName, botAlias)
}
\arguments{
\item{name}{[required] The name of the association between the bot and the channel. The name is case sensitive.}

\item{botName}{[required] The name of the Amazon Lex bot.}

\item{botAlias}{[required] An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.}
}
\description{
Returns information about the association between an Amazon Lex bot and a messaging platform.
}
\details{
This operation requires permissions for the \code{lex:GetBotChannelAssociation} action.
}
\section{Accepted Parameters}{
\preformatted{get_bot_channel_association(
  name = "string",
  botName = "string",
  botAlias = "string"
)
}
}

