% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudsearch_operations.R
\name{define_analysis_scheme}
\alias{define_analysis_scheme}
\title{Configures an analysis scheme that can be applied to a text or text-array field to define language-specific text processing options}
\usage{
define_analysis_scheme(DomainName, AnalysisScheme)
}
\arguments{
\item{DomainName}{[required]}

\item{AnalysisScheme}{[required]}
}
\description{
Configures an analysis scheme that can be applied to a \code{text} or \code{text-array} field to define language-specific text processing options. For more information, see \href{http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html}{Configuring Analysis Schemes} in the \emph{Amazon CloudSearch Developer Guide}.
}
\section{Accepted Parameters}{
\preformatted{define_analysis_scheme(
  DomainName = "string",
  AnalysisScheme = list(
    AnalysisSchemeName = "string",
    AnalysisSchemeLanguage = "ar"|"bg"|"ca"|"cs"|"da"|"de"|"el"|"en"|"es"|"eu"|"fa"|"fi"|"fr"|"ga"|"gl"|"he"|"hi"|"hu"|"hy"|"id"|"it"|"ja"|"ko"|"lv"|"mul"|"nl"|"no"|"pt"|"ro"|"ru"|"sv"|"th"|"tr"|"zh-Hans"|"zh-Hant",
    AnalysisOptions = list(
      Synonyms = "string",
      Stopwords = "string",
      StemmingDictionary = "string",
      JapaneseTokenizationDictionary = "string",
      AlgorithmicStemming = "none"|"minimal"|"light"|"full"
    )
  )
)
}
}

