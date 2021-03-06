% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.pinpoint_operations.R
\name{phone_number_validate}
\alias{phone_number_validate}
\title{Returns information about the specified phone number}
\usage{
phone_number_validate(NumberValidateRequest)
}
\arguments{
\item{NumberValidateRequest}{[required]}
}
\description{
Returns information about the specified phone number.
}
\section{Accepted Parameters}{
\preformatted{phone_number_validate(
  NumberValidateRequest = list(
    IsoCountryCode = "string",
    PhoneNumber = "string"
  )
)
}
}

