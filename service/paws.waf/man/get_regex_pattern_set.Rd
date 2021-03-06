% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.waf_operations.R
\name{get_regex_pattern_set}
\alias{get_regex_pattern_set}
\title{Returns the RegexPatternSet specified by RegexPatternSetId}
\usage{
get_regex_pattern_set(RegexPatternSetId)
}
\arguments{
\item{RegexPatternSetId}{[required] The \code{RegexPatternSetId} of the RegexPatternSet that you want to get. \code{RegexPatternSetId} is returned by CreateRegexPatternSet and by ListRegexPatternSets.}
}
\description{
Returns the RegexPatternSet specified by \code{RegexPatternSetId}.
}
\section{Accepted Parameters}{
\preformatted{get_regex_pattern_set(
  RegexPatternSetId = "string"
)
}
}

