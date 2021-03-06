% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.route53_operations.R
\name{change_resource_record_sets}
\alias{change_resource_record_sets}
\title{Creates, changes, or deletes a resource record set, which contains authoritative DNS information for a specified domain name or subdomain name}
\usage{
change_resource_record_sets(HostedZoneId, ChangeBatch)
}
\arguments{
\item{HostedZoneId}{[required] The ID of the hosted zone that contains the resource record sets that you want to change.}

\item{ChangeBatch}{[required] A complex type that contains an optional comment and the \code{Changes} element.}
}
\description{
Creates, changes, or deletes a resource record set, which contains authoritative DNS information for a specified domain name or subdomain name. For example, you can use \code{ChangeResourceRecordSets} to create a resource record set that routes traffic for test.example.com to a web server that has an IP address of 192.0.2.44.
}
\details{
\strong{Change Batches and Transactional Changes}

The request body must include a document with a \code{ChangeResourceRecordSetsRequest} element. The request body contains a list of change items, known as a change batch. Change batches are considered transactional changes. When using the Amazon Route 53 API to change resource record sets, Route 53 either makes all or none of the changes in a change batch request. This ensures that Route 53 never partially implements the intended changes to the resource record sets in a hosted zone.

For example, a change batch request that deletes the \code{CNAME} record for www.example.com and creates an alias resource record set for www.example.com. Route 53 deletes the first resource record set and creates the second resource record set in a single operation. If either the \code{DELETE} or the \code{CREATE} action fails, then both changes (plus any other changes in the batch) fail, and the original \code{CNAME} record continues to exist.

Due to the nature of transactional changes, you can't delete the same resource record set more than once in a single change batch. If you attempt to delete the same change batch more than once, Route 53 returns an \code{InvalidChangeBatch} error.

\strong{Traffic Flow}

To create resource record sets for complex routing configurations, use either the traffic flow visual editor in the Route 53 console or the API actions for traffic policies and traffic policy instances. Save the configuration as a traffic policy, then associate the traffic policy with one or more domain names (such as example.com) or subdomain names (such as www.example.com), in the same hosted zone or in multiple hosted zones. You can roll back the updates if the new configuration isn't performing as expected. For more information, see \href{http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/traffic-flow.html}{Using Traffic Flow to Route DNS Traffic} in the \emph{Amazon Route 53 Developer Guide}.

\strong{Create, Delete, and Upsert}

Use \code{ChangeResourceRecordsSetsRequest} to perform the following actions:
\itemize{
\item \code{CREATE}: Creates a resource record set that has the specified values.
\item \code{DELETE}: Deletes an existing resource record set that has the specified values.
\item \code{UPSERT}: If a resource record set does not already exist, AWS creates it. If a resource set does exist, Route 53 updates it with the values in the request.
}

\strong{Syntaxes for Creating, Updating, and Deleting Resource Record Sets}

The syntax for a request depends on the type of resource record set that you want to create, delete, or update, such as weighted, alias, or failover. The XML elements in your request must appear in the order listed in the syntax.

For an example for each type of resource record set, see "Examples."

Don't refer to the syntax in the "Parameter Syntax" section, which includes all of the elements for every kind of resource record set that you can create, delete, or update by using \code{ChangeResourceRecordSets}.

\strong{Change Propagation to Route 53 DNS Servers}

When you submit a \code{ChangeResourceRecordSets} request, Route 53 propagates your changes to all of the Route 53 authoritative DNS servers. While your changes are propagating, \code{GetChange} returns a status of \code{PENDING}. When propagation is complete, \code{GetChange} returns a status of \code{INSYNC}. Changes generally propagate to all Route 53 name servers within 60 seconds. For more information, see GetChange.

\strong{Limits on ChangeResourceRecordSets Requests}

For information about the limits on a \code{ChangeResourceRecordSets} request, see \href{http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html}{Limits} in the \emph{Amazon Route 53 Developer Guide}.
}
\section{Accepted Parameters}{
\preformatted{change_resource_record_sets(
  HostedZoneId = "string",
  ChangeBatch = list(
    Comment = "string",
    Changes = list(
      list(
        Action = "CREATE"|"DELETE"|"UPSERT",
        ResourceRecordSet = list(
          Name = "string",
          Type = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA",
          SetIdentifier = "string",
          Weight = 123,
          Region = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"ca-central-1"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"eu-north-1"|"sa-east-1"|"cn-north-1"|"cn-northwest-1"|"ap-south-1",
          GeoLocation = list(
            ContinentCode = "string",
            CountryCode = "string",
            SubdivisionCode = "string"
          ),
          Failover = "PRIMARY"|"SECONDARY",
          MultiValueAnswer = TRUE|FALSE,
          TTL = 123,
          ResourceRecords = list(
            list(
              Value = "string"
            )
          ),
          AliasTarget = list(
            HostedZoneId = "string",
            DNSName = "string",
            EvaluateTargetHealth = TRUE|FALSE
          ),
          HealthCheckId = "string",
          TrafficPolicyInstanceId = "string"
        )
      )
    )
  )
)
}
}

\examples{
# The following example creates a resource record set that routes Internet
# traffic to a resource with an IP address of 192.0.2.44.
\donttest{change_resource_record_sets(
  ChangeBatch = list(
    Changes = list(
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          Name = "example.com",
          ResourceRecords = list(
            list(
              Value = "192.0.2.44"
            )
          ),
          TTL = 60L,
          Type = "A"
        )
      )
    ),
    Comment = "Web server for example.com"
  ),
  HostedZoneId = "Z3M3LMPEXAMPLE"
)}

# The following example creates two weighted resource record sets. The
# resource with a Weight of 100 will get 1/3rd of traffic (100/100+200),
# and the other resource will get the rest of the traffic for example.com.
\donttest{change_resource_record_sets(
  ChangeBatch = list(
    Changes = list(
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          HealthCheckId = "abcdef11-2222-3333-4444-555555fedcba",
          Name = "example.com",
          ResourceRecords = list(
            list(
              Value = "192.0.2.44"
            )
          ),
          SetIdentifier = "Seattle data center",
          TTL = 60L,
          Type = "A",
          Weight = 100L
        )
      ),
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          HealthCheckId = "abcdef66-7777-8888-9999-000000fedcba",
          Name = "example.com",
          ResourceRecords = list(
            list(
              Value = "192.0.2.45"
            )
          ),
          SetIdentifier = "Portland data center",
          TTL = 60L,
          Type = "A",
          Weight = 200L
        )
      )
    ),
    Comment = "Web servers for example.com"
  ),
  HostedZoneId = "Z3M3LMPEXAMPLE"
)}

# The following example creates an alias resource record set that routes
# traffic to a CloudFront distribution.
\donttest{change_resource_record_sets(
  ChangeBatch = list(
    Changes = list(
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          AliasTarget = list(
            DNSName = "d123rk29d0stfj.cloudfront.net",
            EvaluateTargetHealth = FALSE,
            HostedZoneId = "Z2FDTNDATAQYW2"
          ),
          Name = "example.com",
          Type = "A"
        )
      )
    ),
    Comment = "CloudFront distribution for example.com"
  ),
  HostedZoneId = "Z3M3LMPEXAMPLE"
)}

# The following example creates two weighted alias resource record sets
# that route traffic to ELB load balancers. The resource with a Weight of
# 100 will get 1/3rd of traffic (100/100+200), and the other resource will
# get the rest of the traffic for example.com.
\donttest{change_resource_record_sets(
  ChangeBatch = list(
    Changes = list(
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          AliasTarget = list(
            DNSName = "example-com-123456789.us-east-2.elb.amazonaws.com ",
            EvaluateTargetHealth = TRUE,
            HostedZoneId = "Z3AADJGX6KTTL2"
          ),
          Name = "example.com",
          SetIdentifier = "Ohio region",
          Type = "A",
          Weight = 100L
        )
      ),
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          AliasTarget = list(
            DNSName = "example-com-987654321.us-west-2.elb.amazonaws.com ",
            EvaluateTargetHealth = TRUE,
            HostedZoneId = "Z1H1FL5HABSF5"
          ),
          Name = "example.com",
          SetIdentifier = "Oregon region",
          Type = "A",
          Weight = 200L
        )
      )
    ),
    Comment = "ELB load balancers for example.com"
  ),
  HostedZoneId = "Z3M3LMPEXAMPLE"
)}

# The following example creates two latency resource record sets that
# route traffic to EC2 instances. Traffic for example.com is routed either
# to the Ohio region or the Oregon region, depending on the latency
# between the user and those regions.
\donttest{change_resource_record_sets(
  ChangeBatch = list(
    Changes = list(
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          HealthCheckId = "abcdef11-2222-3333-4444-555555fedcba",
          Name = "example.com",
          Region = "us-east-2",
          ResourceRecords = list(
            list(
              Value = "192.0.2.44"
            )
          ),
          SetIdentifier = "Ohio region",
          TTL = 60L,
          Type = "A"
        )
      ),
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          HealthCheckId = "abcdef66-7777-8888-9999-000000fedcba",
          Name = "example.com",
          Region = "us-west-2",
          ResourceRecords = list(
            list(
              Value = "192.0.2.45"
            )
          ),
          SetIdentifier = "Oregon region",
          TTL = 60L,
          Type = "A"
        )
      )
    ),
    Comment = "EC2 instances for example.com"
  ),
  HostedZoneId = "Z3M3LMPEXAMPLE"
)}

# The following example creates two latency alias resource record sets
# that route traffic for example.com to ELB load balancers. Requests are
# routed either to the Ohio region or the Oregon region, depending on the
# latency between the user and those regions.
\donttest{change_resource_record_sets(
  ChangeBatch = list(
    Changes = list(
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          AliasTarget = list(
            DNSName = "example-com-123456789.us-east-2.elb.amazonaws.com ",
            EvaluateTargetHealth = TRUE,
            HostedZoneId = "Z3AADJGX6KTTL2"
          ),
          Name = "example.com",
          Region = "us-east-2",
          SetIdentifier = "Ohio region",
          Type = "A"
        )
      ),
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          AliasTarget = list(
            DNSName = "example-com-987654321.us-west-2.elb.amazonaws.com ",
            EvaluateTargetHealth = TRUE,
            HostedZoneId = "Z1H1FL5HABSF5"
          ),
          Name = "example.com",
          Region = "us-west-2",
          SetIdentifier = "Oregon region",
          Type = "A"
        )
      )
    ),
    Comment = "ELB load balancers for example.com"
  ),
  HostedZoneId = "Z3M3LMPEXAMPLE"
)}

# The following example creates primary and secondary failover resource
# record sets that route traffic to EC2 instances. Traffic is generally
# routed to the primary resource, in the Ohio region. If that resource is
# unavailable, traffic is routed to the secondary resource, in the Oregon
# region.
\donttest{change_resource_record_sets(
  ChangeBatch = list(
    Changes = list(
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          Failover = "PRIMARY",
          HealthCheckId = "abcdef11-2222-3333-4444-555555fedcba",
          Name = "example.com",
          ResourceRecords = list(
            list(
              Value = "192.0.2.44"
            )
          ),
          SetIdentifier = "Ohio region",
          TTL = 60L,
          Type = "A"
        )
      ),
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          Failover = "SECONDARY",
          HealthCheckId = "abcdef66-7777-8888-9999-000000fedcba",
          Name = "example.com",
          ResourceRecords = list(
            list(
              Value = "192.0.2.45"
            )
          ),
          SetIdentifier = "Oregon region",
          TTL = 60L,
          Type = "A"
        )
      )
    ),
    Comment = "Failover configuration for example.com"
  ),
  HostedZoneId = "Z3M3LMPEXAMPLE"
)}

# The following example creates primary and secondary failover alias
# resource record sets that route traffic to ELB load balancers. Traffic
# is generally routed to the primary resource, in the Ohio region. If that
# resource is unavailable, traffic is routed to the secondary resource, in
# the Oregon region.
\donttest{change_resource_record_sets(
  ChangeBatch = list(
    Changes = list(
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          AliasTarget = list(
            DNSName = "example-com-123456789.us-east-2.elb.amazonaws.com ",
            EvaluateTargetHealth = TRUE,
            HostedZoneId = "Z3AADJGX6KTTL2"
          ),
          Failover = "PRIMARY",
          Name = "example.com",
          SetIdentifier = "Ohio region",
          Type = "A"
        )
      ),
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          AliasTarget = list(
            DNSName = "example-com-987654321.us-west-2.elb.amazonaws.com ",
            EvaluateTargetHealth = TRUE,
            HostedZoneId = "Z1H1FL5HABSF5"
          ),
          Failover = "SECONDARY",
          Name = "example.com",
          SetIdentifier = "Oregon region",
          Type = "A"
        )
      )
    ),
    Comment = "Failover alias configuration for example.com"
  ),
  HostedZoneId = "Z3M3LMPEXAMPLE"
)}

# The following example creates four geolocation resource record sets that
# use IPv4 addresses to route traffic to resources such as web servers
# running on EC2 instances. Traffic is routed to one of four IP addresses,
# for North America (NA), for South America (SA), for Europe (EU), and for
# all other locations (*).
\donttest{change_resource_record_sets(
  ChangeBatch = list(
    Changes = list(
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          GeoLocation = list(
            ContinentCode = "NA"
          ),
          Name = "example.com",
          ResourceRecords = list(
            list(
              Value = "192.0.2.44"
            )
          ),
          SetIdentifier = "North America",
          TTL = 60L,
          Type = "A"
        )
      ),
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          GeoLocation = list(
            ContinentCode = "SA"
          ),
          Name = "example.com",
          ResourceRecords = list(
            list(
              Value = "192.0.2.45"
            )
          ),
          SetIdentifier = "South America",
          TTL = 60L,
          Type = "A"
        )
      ),
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          GeoLocation = list(
            ContinentCode = "EU"
          ),
          Name = "example.com",
          ResourceRecords = list(
            list(
              Value = "192.0.2.46"
            )
          ),
          SetIdentifier = "Europe",
          TTL = 60L,
          Type = "A"
        )
      ),
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          GeoLocation = list(
            CountryCode = "*"
          ),
          Name = "example.com",
          ResourceRecords = list(
            list(
              Value = "192.0.2.47"
            )
          ),
          SetIdentifier = "Other locations",
          TTL = 60L,
          Type = "A"
        )
      )
    ),
    Comment = "Geolocation configuration for example.com"
  ),
  HostedZoneId = "Z3M3LMPEXAMPLE"
)}

# The following example creates four geolocation alias resource record
# sets that route traffic to ELB load balancers. Traffic is routed to one
# of four IP addresses, for North America (NA), for South America (SA),
# for Europe (EU), and for all other locations (*).
\donttest{change_resource_record_sets(
  ChangeBatch = list(
    Changes = list(
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          AliasTarget = list(
            DNSName = "example-com-123456789.us-east-2.elb.amazonaws.com ",
            EvaluateTargetHealth = TRUE,
            HostedZoneId = "Z3AADJGX6KTTL2"
          ),
          GeoLocation = list(
            ContinentCode = "NA"
          ),
          Name = "example.com",
          SetIdentifier = "North America",
          Type = "A"
        )
      ),
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          AliasTarget = list(
            DNSName = "example-com-234567890.sa-east-1.elb.amazonaws.com ",
            EvaluateTargetHealth = TRUE,
            HostedZoneId = "Z2P70J7HTTTPLU"
          ),
          GeoLocation = list(
            ContinentCode = "SA"
          ),
          Name = "example.com",
          SetIdentifier = "South America",
          Type = "A"
        )
      ),
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          AliasTarget = list(
            DNSName = "example-com-234567890.eu-central-1.elb.amazonaws.com ",
            EvaluateTargetHealth = TRUE,
            HostedZoneId = "Z215JYRZR1TBD5"
          ),
          GeoLocation = list(
            ContinentCode = "EU"
          ),
          Name = "example.com",
          SetIdentifier = "Europe",
          Type = "A"
        )
      ),
      list(
        Action = "CREATE",
        ResourceRecordSet = list(
          AliasTarget = list(
            DNSName = "example-com-234567890.ap-southeast-1.elb.amazonaws.com ",
            EvaluateTargetHealth = TRUE,
            HostedZoneId = "Z1LMS91P8CMLE5"
          ),
          GeoLocation = list(
            CountryCode = "*"
          ),
          Name = "example.com",
          SetIdentifier = "Other locations",
          Type = "A"
        )
      )
    ),
    Comment = "Geolocation alias configuration for example.com"
  ),
  HostedZoneId = "Z3M3LMPEXAMPLE"
)}

}
