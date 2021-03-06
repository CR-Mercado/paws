# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common populate
NULL

delete_lexicon_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), tags = list(location = "uri", 
        locationName = "LexiconName", type = "string", pattern = "[0-9A-Za-z]{1,20}", 
        sensitive = TRUE))), tags = list(type = "structure"))
    return(populate(args, shape))
}

delete_lexicon_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_voices_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LanguageCode = structure(logical(0), 
        tags = list(location = "querystring", locationName = "LanguageCode", 
            type = "string", enum = c("cmn-CN", "cy-GB", "da-DK", 
                "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", 
                "en-US", "es-ES", "es-MX", "es-US", "fr-CA", 
                "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", 
                "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", 
                "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR"))), 
        IncludeAdditionalLanguageCodes = structure(logical(0), 
            tags = list(location = "querystring", locationName = "IncludeAdditionalLanguageCodes", 
                type = "boolean")), NextToken = structure(logical(0), 
            tags = list(location = "querystring", locationName = "NextToken", 
                type = "string"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

describe_voices_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Voices = structure(list(structure(list(Gender = structure(logical(0), 
        tags = list(type = "string", enum = c("Female", "Male"))), 
        Id = structure(logical(0), tags = list(type = "string", 
            enum = c("Geraint", "Gwyneth", "Mads", "Naja", "Hans", 
                "Marlene", "Nicole", "Russell", "Amy", "Brian", 
                "Emma", "Raveena", "Ivy", "Joanna", "Joey", "Justin", 
                "Kendra", "Kimberly", "Matthew", "Salli", "Conchita", 
                "Enrique", "Miguel", "Penelope", "Chantal", "Celine", 
                "Lea", "Mathieu", "Dora", "Karl", "Carla", "Giorgio", 
                "Mizuki", "Liv", "Lotte", "Ruben", "Ewa", "Jacek", 
                "Jan", "Maja", "Ricardo", "Vitoria", "Cristiano", 
                "Ines", "Carmen", "Maxim", "Tatyana", "Astrid", 
                "Filiz", "Vicki", "Takumi", "Seoyeon", "Aditi", 
                "Zhiyu", "Bianca", "Lucia", "Mia"))), LanguageCode = structure(logical(0), 
            tags = list(type = "string", enum = c("cmn-CN", "cy-GB", 
                "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", 
                "en-IN", "en-US", "es-ES", "es-MX", "es-US", 
                "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", 
                "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", 
                "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", 
                "tr-TR"))), LanguageName = structure(logical(0), 
            tags = list(type = "string")), Name = structure(logical(0), 
            tags = list(type = "string")), AdditionalLanguageCodes = structure(list(structure(logical(0), 
            tags = list(type = "string", enum = c("cmn-CN", "cy-GB", 
                "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", 
                "en-IN", "en-US", "es-ES", "es-MX", "es-US", 
                "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", 
                "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", 
                "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", 
                "tr-TR")))), tags = list(type = "list"))), tags = list(type = "structure"))), 
        tags = list(type = "list")), NextToken = structure(logical(0), 
        tags = list(type = "string"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

get_lexicon_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), tags = list(location = "uri", 
        locationName = "LexiconName", type = "string", pattern = "[0-9A-Za-z]{1,20}", 
        sensitive = TRUE))), tags = list(type = "structure"))
    return(populate(args, shape))
}

get_lexicon_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Lexicon = structure(list(Content = structure(logical(0), 
        tags = list(type = "string")), Name = structure(logical(0), 
        tags = list(type = "string", pattern = "[0-9A-Za-z]{1,20}", 
            sensitive = TRUE))), tags = list(type = "structure")), 
        LexiconAttributes = structure(list(Alphabet = structure(logical(0), 
            tags = list(type = "string")), LanguageCode = structure(logical(0), 
            tags = list(type = "string", enum = c("cmn-CN", "cy-GB", 
                "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", 
                "en-IN", "en-US", "es-ES", "es-MX", "es-US", 
                "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", 
                "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", 
                "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", 
                "tr-TR"))), LastModified = structure(logical(0), 
            tags = list(type = "timestamp")), LexiconArn = structure(logical(0), 
            tags = list(type = "string")), LexemesCount = structure(logical(0), 
            tags = list(type = "integer")), Size = structure(logical(0), 
            tags = list(type = "integer"))), tags = list(type = "structure"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

get_speech_synthesis_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), tags = list(location = "uri", 
        locationName = "TaskId", type = "string", max = 128L, 
        min = 1L))), tags = list(type = "structure"))
    return(populate(args, shape))
}

get_speech_synthesis_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SynthesisTask = structure(list(TaskId = structure(logical(0), 
        tags = list(type = "string", max = 128L, min = 1L)), 
        TaskStatus = structure(logical(0), tags = list(type = "string", 
            enum = c("scheduled", "inProgress", "completed", 
                "failed"))), TaskStatusReason = structure(logical(0), 
            tags = list(type = "string")), OutputUri = structure(logical(0), 
            tags = list(type = "string")), CreationTime = structure(logical(0), 
            tags = list(type = "timestamp")), RequestCharacters = structure(logical(0), 
            tags = list(type = "integer")), SnsTopicArn = structure(logical(0), 
            tags = list(type = "string", pattern = "^arn:aws(-(cn|iso(-b)?|us-gov))?:sns:.*:\\w{12}:.+$")), 
        LexiconNames = structure(list(structure(logical(0), tags = list(type = "string", 
            pattern = "[0-9A-Za-z]{1,20}", sensitive = TRUE))), 
            tags = list(type = "list", max = 5L)), OutputFormat = structure(logical(0), 
            tags = list(type = "string", enum = c("json", "mp3", 
                "ogg_vorbis", "pcm"))), SampleRate = structure(logical(0), 
            tags = list(type = "string")), SpeechMarkTypes = structure(list(structure(logical(0), 
            tags = list(type = "string", enum = c("sentence", 
                "ssml", "viseme", "word")))), tags = list(type = "list", 
            max = 4L)), TextType = structure(logical(0), tags = list(type = "string", 
            enum = c("ssml", "text"))), VoiceId = structure(logical(0), 
            tags = list(type = "string", enum = c("Geraint", 
                "Gwyneth", "Mads", "Naja", "Hans", "Marlene", 
                "Nicole", "Russell", "Amy", "Brian", "Emma", 
                "Raveena", "Ivy", "Joanna", "Joey", "Justin", 
                "Kendra", "Kimberly", "Matthew", "Salli", "Conchita", 
                "Enrique", "Miguel", "Penelope", "Chantal", "Celine", 
                "Lea", "Mathieu", "Dora", "Karl", "Carla", "Giorgio", 
                "Mizuki", "Liv", "Lotte", "Ruben", "Ewa", "Jacek", 
                "Jan", "Maja", "Ricardo", "Vitoria", "Cristiano", 
                "Ines", "Carmen", "Maxim", "Tatyana", "Astrid", 
                "Filiz", "Vicki", "Takumi", "Seoyeon", "Aditi", 
                "Zhiyu", "Bianca", "Lucia", "Mia"))), LanguageCode = structure(logical(0), 
            tags = list(type = "string", enum = c("cmn-CN", "cy-GB", 
                "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", 
                "en-IN", "en-US", "es-ES", "es-MX", "es-US", 
                "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", 
                "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", 
                "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", 
                "tr-TR")))), tags = list(type = "structure"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

list_lexicons_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        tags = list(location = "querystring", locationName = "NextToken", 
            type = "string"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

list_lexicons_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Lexicons = structure(list(structure(list(Name = structure(logical(0), 
        tags = list(type = "string", pattern = "[0-9A-Za-z]{1,20}", 
            sensitive = TRUE)), Attributes = structure(list(Alphabet = structure(logical(0), 
        tags = list(type = "string")), LanguageCode = structure(logical(0), 
        tags = list(type = "string", enum = c("cmn-CN", "cy-GB", 
            "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", 
            "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", 
            "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", 
            "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", 
            "ru-RU", "sv-SE", "tr-TR"))), LastModified = structure(logical(0), 
        tags = list(type = "timestamp")), LexiconArn = structure(logical(0), 
        tags = list(type = "string")), LexemesCount = structure(logical(0), 
        tags = list(type = "integer")), Size = structure(logical(0), 
        tags = list(type = "integer"))), tags = list(type = "structure"))), 
        tags = list(type = "structure"))), tags = list(type = "list")), 
        NextToken = structure(logical(0), tags = list(type = "string"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

list_speech_synthesis_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        tags = list(location = "querystring", locationName = "MaxResults", 
            type = "integer", max = 100L, min = 1L)), NextToken = structure(logical(0), 
        tags = list(location = "querystring", locationName = "NextToken", 
            type = "string")), Status = structure(logical(0), 
        tags = list(location = "querystring", locationName = "Status", 
            type = "string", enum = c("scheduled", "inProgress", 
                "completed", "failed")))), tags = list(type = "structure"))
    return(populate(args, shape))
}

list_speech_synthesis_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        tags = list(type = "string")), SynthesisTasks = structure(list(structure(list(TaskId = structure(logical(0), 
        tags = list(type = "string", max = 128L, min = 1L)), 
        TaskStatus = structure(logical(0), tags = list(type = "string", 
            enum = c("scheduled", "inProgress", "completed", 
                "failed"))), TaskStatusReason = structure(logical(0), 
            tags = list(type = "string")), OutputUri = structure(logical(0), 
            tags = list(type = "string")), CreationTime = structure(logical(0), 
            tags = list(type = "timestamp")), RequestCharacters = structure(logical(0), 
            tags = list(type = "integer")), SnsTopicArn = structure(logical(0), 
            tags = list(type = "string", pattern = "^arn:aws(-(cn|iso(-b)?|us-gov))?:sns:.*:\\w{12}:.+$")), 
        LexiconNames = structure(list(structure(logical(0), tags = list(type = "string", 
            pattern = "[0-9A-Za-z]{1,20}", sensitive = TRUE))), 
            tags = list(type = "list", max = 5L)), OutputFormat = structure(logical(0), 
            tags = list(type = "string", enum = c("json", "mp3", 
                "ogg_vorbis", "pcm"))), SampleRate = structure(logical(0), 
            tags = list(type = "string")), SpeechMarkTypes = structure(list(structure(logical(0), 
            tags = list(type = "string", enum = c("sentence", 
                "ssml", "viseme", "word")))), tags = list(type = "list", 
            max = 4L)), TextType = structure(logical(0), tags = list(type = "string", 
            enum = c("ssml", "text"))), VoiceId = structure(logical(0), 
            tags = list(type = "string", enum = c("Geraint", 
                "Gwyneth", "Mads", "Naja", "Hans", "Marlene", 
                "Nicole", "Russell", "Amy", "Brian", "Emma", 
                "Raveena", "Ivy", "Joanna", "Joey", "Justin", 
                "Kendra", "Kimberly", "Matthew", "Salli", "Conchita", 
                "Enrique", "Miguel", "Penelope", "Chantal", "Celine", 
                "Lea", "Mathieu", "Dora", "Karl", "Carla", "Giorgio", 
                "Mizuki", "Liv", "Lotte", "Ruben", "Ewa", "Jacek", 
                "Jan", "Maja", "Ricardo", "Vitoria", "Cristiano", 
                "Ines", "Carmen", "Maxim", "Tatyana", "Astrid", 
                "Filiz", "Vicki", "Takumi", "Seoyeon", "Aditi", 
                "Zhiyu", "Bianca", "Lucia", "Mia"))), LanguageCode = structure(logical(0), 
            tags = list(type = "string", enum = c("cmn-CN", "cy-GB", 
                "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", 
                "en-IN", "en-US", "es-ES", "es-MX", "es-US", 
                "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", 
                "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", 
                "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", 
                "tr-TR")))), tags = list(type = "structure"))), 
        tags = list(type = "list"))), tags = list(type = "structure"))
    return(populate(args, shape))
}

put_lexicon_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), tags = list(location = "uri", 
        locationName = "LexiconName", type = "string", pattern = "[0-9A-Za-z]{1,20}", 
        sensitive = TRUE)), Content = structure(logical(0), tags = list(type = "string"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

put_lexicon_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), tags = list(type = "structure"))
    return(populate(args, shape))
}

start_speech_synthesis_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LexiconNames = structure(list(structure(logical(0), 
        tags = list(type = "string", pattern = "[0-9A-Za-z]{1,20}", 
            sensitive = TRUE))), tags = list(type = "list", max = 5L)), 
        OutputFormat = structure(logical(0), tags = list(type = "string", 
            enum = c("json", "mp3", "ogg_vorbis", "pcm"))), OutputS3BucketName = structure(logical(0), 
            tags = list(type = "string", pattern = "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$")), 
        OutputS3KeyPrefix = structure(logical(0), tags = list(type = "string", 
            pattern = "^[0-9a-zA-Z\\/\\!\\-_\\.\\*\\'\\(\\)]{0,800}$")), 
        SampleRate = structure(logical(0), tags = list(type = "string")), 
        SnsTopicArn = structure(logical(0), tags = list(type = "string", 
            pattern = "^arn:aws(-(cn|iso(-b)?|us-gov))?:sns:.*:\\w{12}:.+$")), 
        SpeechMarkTypes = structure(list(structure(logical(0), 
            tags = list(type = "string", enum = c("sentence", 
                "ssml", "viseme", "word")))), tags = list(type = "list", 
            max = 4L)), Text = structure(logical(0), tags = list(type = "string")), 
        TextType = structure(logical(0), tags = list(type = "string", 
            enum = c("ssml", "text"))), VoiceId = structure(logical(0), 
            tags = list(type = "string", enum = c("Geraint", 
                "Gwyneth", "Mads", "Naja", "Hans", "Marlene", 
                "Nicole", "Russell", "Amy", "Brian", "Emma", 
                "Raveena", "Ivy", "Joanna", "Joey", "Justin", 
                "Kendra", "Kimberly", "Matthew", "Salli", "Conchita", 
                "Enrique", "Miguel", "Penelope", "Chantal", "Celine", 
                "Lea", "Mathieu", "Dora", "Karl", "Carla", "Giorgio", 
                "Mizuki", "Liv", "Lotte", "Ruben", "Ewa", "Jacek", 
                "Jan", "Maja", "Ricardo", "Vitoria", "Cristiano", 
                "Ines", "Carmen", "Maxim", "Tatyana", "Astrid", 
                "Filiz", "Vicki", "Takumi", "Seoyeon", "Aditi", 
                "Zhiyu", "Bianca", "Lucia", "Mia"))), LanguageCode = structure(logical(0), 
            tags = list(type = "string", enum = c("cmn-CN", "cy-GB", 
                "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", 
                "en-IN", "en-US", "es-ES", "es-MX", "es-US", 
                "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", 
                "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", 
                "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", 
                "tr-TR")))), tags = list(type = "structure"))
    return(populate(args, shape))
}

start_speech_synthesis_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SynthesisTask = structure(list(TaskId = structure(logical(0), 
        tags = list(type = "string", max = 128L, min = 1L)), 
        TaskStatus = structure(logical(0), tags = list(type = "string", 
            enum = c("scheduled", "inProgress", "completed", 
                "failed"))), TaskStatusReason = structure(logical(0), 
            tags = list(type = "string")), OutputUri = structure(logical(0), 
            tags = list(type = "string")), CreationTime = structure(logical(0), 
            tags = list(type = "timestamp")), RequestCharacters = structure(logical(0), 
            tags = list(type = "integer")), SnsTopicArn = structure(logical(0), 
            tags = list(type = "string", pattern = "^arn:aws(-(cn|iso(-b)?|us-gov))?:sns:.*:\\w{12}:.+$")), 
        LexiconNames = structure(list(structure(logical(0), tags = list(type = "string", 
            pattern = "[0-9A-Za-z]{1,20}", sensitive = TRUE))), 
            tags = list(type = "list", max = 5L)), OutputFormat = structure(logical(0), 
            tags = list(type = "string", enum = c("json", "mp3", 
                "ogg_vorbis", "pcm"))), SampleRate = structure(logical(0), 
            tags = list(type = "string")), SpeechMarkTypes = structure(list(structure(logical(0), 
            tags = list(type = "string", enum = c("sentence", 
                "ssml", "viseme", "word")))), tags = list(type = "list", 
            max = 4L)), TextType = structure(logical(0), tags = list(type = "string", 
            enum = c("ssml", "text"))), VoiceId = structure(logical(0), 
            tags = list(type = "string", enum = c("Geraint", 
                "Gwyneth", "Mads", "Naja", "Hans", "Marlene", 
                "Nicole", "Russell", "Amy", "Brian", "Emma", 
                "Raveena", "Ivy", "Joanna", "Joey", "Justin", 
                "Kendra", "Kimberly", "Matthew", "Salli", "Conchita", 
                "Enrique", "Miguel", "Penelope", "Chantal", "Celine", 
                "Lea", "Mathieu", "Dora", "Karl", "Carla", "Giorgio", 
                "Mizuki", "Liv", "Lotte", "Ruben", "Ewa", "Jacek", 
                "Jan", "Maja", "Ricardo", "Vitoria", "Cristiano", 
                "Ines", "Carmen", "Maxim", "Tatyana", "Astrid", 
                "Filiz", "Vicki", "Takumi", "Seoyeon", "Aditi", 
                "Zhiyu", "Bianca", "Lucia", "Mia"))), LanguageCode = structure(logical(0), 
            tags = list(type = "string", enum = c("cmn-CN", "cy-GB", 
                "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", 
                "en-IN", "en-US", "es-ES", "es-MX", "es-US", 
                "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", 
                "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", 
                "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", 
                "tr-TR")))), tags = list(type = "structure"))), 
        tags = list(type = "structure"))
    return(populate(args, shape))
}

synthesize_speech_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LexiconNames = structure(list(structure(logical(0), 
        tags = list(type = "string", pattern = "[0-9A-Za-z]{1,20}", 
            sensitive = TRUE))), tags = list(type = "list", max = 5L)), 
        OutputFormat = structure(logical(0), tags = list(type = "string", 
            enum = c("json", "mp3", "ogg_vorbis", "pcm"))), SampleRate = structure(logical(0), 
            tags = list(type = "string")), SpeechMarkTypes = structure(list(structure(logical(0), 
            tags = list(type = "string", enum = c("sentence", 
                "ssml", "viseme", "word")))), tags = list(type = "list", 
            max = 4L)), Text = structure(logical(0), tags = list(type = "string")), 
        TextType = structure(logical(0), tags = list(type = "string", 
            enum = c("ssml", "text"))), VoiceId = structure(logical(0), 
            tags = list(type = "string", enum = c("Geraint", 
                "Gwyneth", "Mads", "Naja", "Hans", "Marlene", 
                "Nicole", "Russell", "Amy", "Brian", "Emma", 
                "Raveena", "Ivy", "Joanna", "Joey", "Justin", 
                "Kendra", "Kimberly", "Matthew", "Salli", "Conchita", 
                "Enrique", "Miguel", "Penelope", "Chantal", "Celine", 
                "Lea", "Mathieu", "Dora", "Karl", "Carla", "Giorgio", 
                "Mizuki", "Liv", "Lotte", "Ruben", "Ewa", "Jacek", 
                "Jan", "Maja", "Ricardo", "Vitoria", "Cristiano", 
                "Ines", "Carmen", "Maxim", "Tatyana", "Astrid", 
                "Filiz", "Vicki", "Takumi", "Seoyeon", "Aditi", 
                "Zhiyu", "Bianca", "Lucia", "Mia"))), LanguageCode = structure(logical(0), 
            tags = list(type = "string", enum = c("cmn-CN", "cy-GB", 
                "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", 
                "en-IN", "en-US", "es-ES", "es-MX", "es-US", 
                "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", 
                "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", 
                "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", 
                "tr-TR")))), tags = list(type = "structure"))
    return(populate(args, shape))
}

synthesize_speech_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AudioStream = structure(logical(0), 
        tags = list(type = "blob", streaming = TRUE)), ContentType = structure(logical(0), 
        tags = list(location = "header", locationName = "Content-Type", 
            type = "string")), RequestCharacters = structure(logical(0), 
        tags = list(location = "header", locationName = "x-amzn-RequestCharacters", 
            type = "integer"))), tags = list(type = "structure", 
        payload = "AudioStream"))
    return(populate(args, shape))
}
