% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.waf_operations.R
\name{create_geo_match_set}
\alias{create_geo_match_set}
\title{Creates an GeoMatchSet, which you use to specify which web requests you want to allow or block based on the country that the requests originate from}
\usage{
create_geo_match_set(Name, ChangeToken)
}
\arguments{
\item{Name}{[required] A friendly name or description of the GeoMatchSet. You can't change \code{Name} after you create the \code{GeoMatchSet}.}

\item{ChangeToken}{[required] The value returned by the most recent call to GetChangeToken.}
}
\description{
Creates an GeoMatchSet, which you use to specify which web requests you want to allow or block based on the country that the requests originate from. For example, if you're receiving a lot of requests from one or more countries and you want to block the requests, you can create an \code{GeoMatchSet} that contains those countries and then configure AWS WAF to block the requests.
}
\details{
To create and configure a \code{GeoMatchSet}, perform the following steps:
\enumerate{
\item Use GetChangeToken to get the change token that you provide in the \code{ChangeToken} parameter of a \code{CreateGeoMatchSet} request.
\item Submit a \code{CreateGeoMatchSet} request.
\item Use \code{GetChangeToken} to get the change token that you provide in the \code{ChangeToken} parameter of an UpdateGeoMatchSet request.
\item Submit an \code{UpdateGeoMatchSetSet} request to specify the countries that you want AWS WAF to watch for.
}

For more information about how to use the AWS WAF API to allow or block HTTP requests, see the \href{http://docs.aws.amazon.com/waf/latest/developerguide/}{AWS WAF Developer Guide}.
}
\section{Accepted Parameters}{
\preformatted{create_geo_match_set(
  Name = "string",
  ChangeToken = "string"
)
}
}

