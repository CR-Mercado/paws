% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.comprehendmedical_operations.R
\name{detect_phi}
\alias{detect_phi}
\title{Inspects the clinical text for personal health information (PHI) entities and entity category, location, and confidence score on that information}
\usage{
detect_phi(Text)
}
\arguments{
\item{Text}{[required] A UTF-8 text string containing the clinical content being examined for PHI entities. Each string must contain fewer than 20,000 bytes of characters.}
}
\description{
Inspects the clinical text for personal health information (PHI) entities and entity category, location, and confidence score on that information.
}
\section{Accepted Parameters}{
\preformatted{detect_phi(
  Text = "string"
)
}
}

