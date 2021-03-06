% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.lexmodelbuildingservice_operations.R
\name{put_bot}
\alias{put_bot}
\title{Creates an Amazon Lex conversational bot or replaces an existing bot}
\usage{
put_bot(name, description = NULL, intents = NULL,
  clarificationPrompt = NULL, abortStatement = NULL,
  idleSessionTTLInSeconds = NULL, voiceId = NULL, checksum = NULL,
  processBehavior = NULL, locale, childDirected, createVersion = NULL)
}
\arguments{
\item{name}{[required] The name of the bot. The name is \emph{not} case sensitive.}

\item{description}{A description of the bot.}

\item{intents}{An array of \code{Intent} objects. Each intent represents a command that a user can express. For example, a pizza ordering bot might support an OrderPizza intent. For more information, see how-it-works.}

\item{clarificationPrompt}{When Amazon Lex doesn't understand the user's intent, it uses this message to get clarification. To specify how many times Amazon Lex should repeate the clarification prompt, use the \code{maxAttempts} field. If Amazon Lex still doesn't understand, it sends the message in the \code{abortStatement} field.

When you create a clarification prompt, make sure that it suggests the correct response from the user. for example, for a bot that orders pizza and drinks, you might create this clarification prompt: "What would you like to do? You can say 'Order a pizza' or 'Order a drink.'"}

\item{abortStatement}{When Amazon Lex can't understand the user's input in context, it tries to elicit the information a few times. After that, Amazon Lex sends the message defined in \code{abortStatement} to the user, and then aborts the conversation. To set the number of retries, use the \code{valueElicitationPrompt} field for the slot type.

For example, in a pizza ordering bot, Amazon Lex might ask a user "What type of crust would you like?" If the user's response is not one of the expected responses (for example, "thin crust, "deep dish," etc.), Amazon Lex tries to elicit a correct response a few more times.

For example, in a pizza ordering application, \code{OrderPizza} might be one of the intents. This intent might require the \code{CrustType} slot. You specify the \code{valueElicitationPrompt} field when you create the \code{CrustType} slot.}

\item{idleSessionTTLInSeconds}{The maximum time in seconds that Amazon Lex retains the data gathered in a conversation.

A user interaction session remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Lex deletes any data provided before the timeout.

For example, suppose that a user chooses the OrderPizza intent, but gets sidetracked halfway through placing an order. If the user doesn't complete the order within the specified time, Amazon Lex discards the slot information that it gathered, and the user must start over.

If you don't include the \code{idleSessionTTLInSeconds} element in a \code{PutBot} operation request, Amazon Lex uses the default value. This is also true if the request replaces an existing bot.

The default is 300 seconds (5 minutes).}

\item{voiceId}{The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see \href{http://docs.aws.amazon.com/polly/latest/dg/voicelist.html}{Available Voices} in the \emph{Amazon Polly Developer Guide}.}

\item{checksum}{Identifies a specific revision of the \code{$LATEST} version.

When you create a new bot, leave the \code{checksum} field blank. If you specify a checksum you get a \code{BadRequestException} exception.

When you want to update a bot, set the \code{checksum} field to the checksum of the most recent revision of the \code{$LATEST} version. If you don't specify the \code{ checksum} field, or if the checksum does not match the \code{$LATEST} version, you get a \code{PreconditionFailedException} exception.}

\item{processBehavior}{If you set the \code{processBehavior} element to \code{BUILD}, Amazon Lex builds the bot so that it can be run. If you set the element to \code{SAVE} Amazon Lex saves the bot, but doesn't build it.

If you don't specify this value, the default value is \code{BUILD}.}

\item{locale}{[required] Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot.

The default is \code{en-US}.}

\item{childDirected}{[required] For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying \code{true} or \code{false} in the \code{childDirected} field. By specifying \code{true} in the \code{childDirected} field, you confirm that your use of Amazon Lex \strong{is} related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying \code{false} in the \code{childDirected} field, you confirm that your use of Amazon Lex \strong{is not} related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the \code{childDirected} field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.

If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the \href{https://aws.amazon.com/lex/faqs#data-security}{Amazon Lex FAQ.}}

\item{createVersion}{}
}
\description{
Creates an Amazon Lex conversational bot or replaces an existing bot. When you create or update a bot you are only required to specify a name, a locale, and whether the bot is directed toward children under age 13. You can use this to add intents later, or to remove intents from an existing bot. When you create a bot with the minimum information, the bot is created or updated but Amazon Lex returns the `` response \code{FAILED}. You can build the bot after you add one or more intents. For more information about Amazon Lex bots, see how-it-works.
}
\details{
If you specify the name of an existing bot, the fields in the request replace the existing values in the \code{$LATEST} version of the bot. Amazon Lex removes any fields that you don't provide values for in the request, except for the \code{idleTTLInSeconds} and \code{privacySettings} fields, which are set to their default values. If you don't specify values for required fields, Amazon Lex throws an exception.

This operation requires permissions for the \code{lex:PutBot} action. For more information, see auth-and-access-control.
}
\section{Accepted Parameters}{
\preformatted{put_bot(
  name = "string",
  description = "string",
  intents = list(
    list(
      intentName = "string",
      intentVersion = "string"
    )
  ),
  clarificationPrompt = list(
    messages = list(
      list(
        contentType = "PlainText"|"SSML"|"CustomPayload",
        content = "string",
        groupNumber = 123
      )
    ),
    maxAttempts = 123,
    responseCard = "string"
  ),
  abortStatement = list(
    messages = list(
      list(
        contentType = "PlainText"|"SSML"|"CustomPayload",
        content = "string",
        groupNumber = 123
      )
    ),
    responseCard = "string"
  ),
  idleSessionTTLInSeconds = 123,
  voiceId = "string",
  checksum = "string",
  processBehavior = "SAVE"|"BUILD",
  locale = "en-US"|"en-GB"|"de-DE",
  childDirected = TRUE|FALSE,
  createVersion = TRUE|FALSE
)
}
}

\examples{
# This example shows how to create a bot for ordering pizzas.
\donttest{put_bot(
  name = "DocOrderPizzaBot",
  abortStatement = list(
    messages = list(
      list(
        content = "I don't understand. Can you try again?",
        contentType = "PlainText"
      ),
      list(
        content = "I'm sorry, I don't understand.",
        contentType = "PlainText"
      )
    )
  ),
  childDirected = TRUE,
  clarificationPrompt = list(
    maxAttempts = 1L,
    messages = list(
      list(
        content = "I'm sorry, I didn't hear that. Can you repeate what you just said?",
        contentType = "PlainText"
      ),
      list(
        content = "Can you say that again?",
        contentType = "PlainText"
      )
    )
  ),
  description = "Orders a pizza from a local pizzeria.",
  idleSessionTTLInSeconds = 300L,
  intents = list(
    list(
      intentName = "DocOrderPizza",
      intentVersion = "$LATEST"
    )
  ),
  locale = "en-US",
  processBehavior = "SAVE"
)}

}
