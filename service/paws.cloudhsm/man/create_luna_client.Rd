% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.cloudhsm_operations.R
\name{create_luna_client}
\alias{create_luna_client}
\title{This is documentation for AWS CLOUDHSM CLASSIC}
\usage{
create_luna_client(Label = NULL, Certificate)
}
\arguments{
\item{Label}{The label for the client.}

\item{Certificate}{[required] The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used by this client.}
}
\description{
This is documentation for \strong{AWS CloudHSM Classic}. For more information, see \href{http://aws.amazon.com/cloudhsm/faqs-classic/}{AWS CloudHSM Classic FAQs}, the \href{http://docs.aws.amazon.com/cloudhsm/classic/userguide/}{AWS CloudHSM Classic User Guide}, and the \href{http://docs.aws.amazon.com/cloudhsm/classic/APIReference/}{AWS CloudHSM Classic API Reference}.
}
\details{
\strong{For information about the current version of AWS CloudHSM}, see \href{http://aws.amazon.com/cloudhsm/}{AWS CloudHSM}, the \href{http://docs.aws.amazon.com/cloudhsm/latest/userguide/}{AWS CloudHSM User Guide}, and the \href{http://docs.aws.amazon.com/cloudhsm/latest/APIReference/}{AWS CloudHSM API Reference}.

Creates an HSM client.
}
\section{Accepted Parameters}{
\preformatted{create_luna_client(
  Label = "string",
  Certificate = "string"
)
}
}

