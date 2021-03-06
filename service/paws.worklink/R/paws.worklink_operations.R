# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_operation new_request send_request
NULL

#' Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network
#'
#' Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network.
#'
#' @section Accepted Parameters:
#' ```
#' associate_website_certificate_authority(
#'   FleetArn = "string",
#'   Certificate = "string",
#'   DisplayName = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#' @param Certificate &#91;required&#93; The root certificate of the CA.
#' @param DisplayName The certificate name to display.
#'
#' @export
associate_website_certificate_authority <- function (FleetArn, 
    Certificate, DisplayName = NULL) 
{
    op <- new_operation(name = "AssociateWebsiteCertificateAuthority", 
        http_method = "POST", http_path = "/associateWebsiteCertificateAuthority", 
        paginator = list())
    input <- associate_website_certificate_authority_input(FleetArn = FleetArn, 
        Certificate = Certificate, DisplayName = DisplayName)
    output <- associate_website_certificate_authority_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a fleet
#'
#' Creates a fleet. A fleet consists of resources and the configuration that delivers associated websites to authorized users who download and set up the Amazon WorkLink app.
#'
#' @section Accepted Parameters:
#' ```
#' create_fleet(
#'   FleetName = "string",
#'   DisplayName = "string",
#'   OptimizeForEndUserLocation = TRUE|FALSE
#' )
#' ```
#'
#' @param FleetName &#91;required&#93; A unique name for the fleet.
#' @param DisplayName The fleet name to display.
#' @param OptimizeForEndUserLocation The option to optimize for better performance by routing traffic through the closest AWS Region to users, which may be outside of your home Region.
#'
#' @export
create_fleet <- function (FleetName, DisplayName = NULL, OptimizeForEndUserLocation = NULL) 
{
    op <- new_operation(name = "CreateFleet", http_method = "POST", 
        http_path = "/createFleet", paginator = list())
    input <- create_fleet_input(FleetName = FleetName, DisplayName = DisplayName, 
        OptimizeForEndUserLocation = OptimizeForEndUserLocation)
    output <- create_fleet_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a fleet
#'
#' Deletes a fleet. Prevents users from accessing previously associated websites.
#'
#' @section Accepted Parameters:
#' ```
#' delete_fleet(
#'   FleetArn = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#'
#' @export
delete_fleet <- function (FleetArn) 
{
    op <- new_operation(name = "DeleteFleet", http_method = "POST", 
        http_path = "/deleteFleet", paginator = list())
    input <- delete_fleet_input(FleetArn = FleetArn)
    output <- delete_fleet_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the configuration for delivering audit streams to the customer account
#'
#' Describes the configuration for delivering audit streams to the customer account.
#'
#' @section Accepted Parameters:
#' ```
#' describe_audit_stream_configuration(
#'   FleetArn = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#'
#' @export
describe_audit_stream_configuration <- function (FleetArn) 
{
    op <- new_operation(name = "DescribeAuditStreamConfiguration", 
        http_method = "POST", http_path = "/describeAuditStreamConfiguration", 
        paginator = list())
    input <- describe_audit_stream_configuration_input(FleetArn = FleetArn)
    output <- describe_audit_stream_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the networking configuration to access the internal websites associated with the specified fleet
#'
#' Describes the networking configuration to access the internal websites associated with the specified fleet.
#'
#' @section Accepted Parameters:
#' ```
#' describe_company_network_configuration(
#'   FleetArn = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#'
#' @export
describe_company_network_configuration <- function (FleetArn) 
{
    op <- new_operation(name = "DescribeCompanyNetworkConfiguration", 
        http_method = "POST", http_path = "/describeCompanyNetworkConfiguration", 
        paginator = list())
    input <- describe_company_network_configuration_input(FleetArn = FleetArn)
    output <- describe_company_network_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides information about a user's device
#'
#' Provides information about a user\'s device.
#'
#' @section Accepted Parameters:
#' ```
#' describe_device(
#'   FleetArn = "string",
#'   DeviceId = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#' @param DeviceId &#91;required&#93; A unique identifier for a registered user\'s device.
#'
#' @export
describe_device <- function (FleetArn, DeviceId) 
{
    op <- new_operation(name = "DescribeDevice", http_method = "POST", 
        http_path = "/describeDevice", paginator = list())
    input <- describe_device_input(FleetArn = FleetArn, DeviceId = DeviceId)
    output <- describe_device_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the device policy configuration for the specified fleet
#'
#' Describes the device policy configuration for the specified fleet.
#'
#' @section Accepted Parameters:
#' ```
#' describe_device_policy_configuration(
#'   FleetArn = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#'
#' @export
describe_device_policy_configuration <- function (FleetArn) 
{
    op <- new_operation(name = "DescribeDevicePolicyConfiguration", 
        http_method = "POST", http_path = "/describeDevicePolicyConfiguration", 
        paginator = list())
    input <- describe_device_policy_configuration_input(FleetArn = FleetArn)
    output <- describe_device_policy_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details
#'
#' Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details.
#'
#' @section Accepted Parameters:
#' ```
#' describe_fleet_metadata(
#'   FleetArn = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#'
#' @export
describe_fleet_metadata <- function (FleetArn) 
{
    op <- new_operation(name = "DescribeFleetMetadata", http_method = "POST", 
        http_path = "/describeFleetMetadata", paginator = list())
    input <- describe_fleet_metadata_input(FleetArn = FleetArn)
    output <- describe_fleet_metadata_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the identity provider configuration of the specified fleet
#'
#' Describes the identity provider configuration of the specified fleet.
#'
#' @section Accepted Parameters:
#' ```
#' describe_identity_provider_configuration(
#'   FleetArn = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#'
#' @export
describe_identity_provider_configuration <- function (FleetArn) 
{
    op <- new_operation(name = "DescribeIdentityProviderConfiguration", 
        http_method = "POST", http_path = "/describeIdentityProviderConfiguration", 
        paginator = list())
    input <- describe_identity_provider_configuration_input(FleetArn = FleetArn)
    output <- describe_identity_provider_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides information about the certificate authority
#'
#' Provides information about the certificate authority.
#'
#' @section Accepted Parameters:
#' ```
#' describe_website_certificate_authority(
#'   FleetArn = "string",
#'   WebsiteCaId = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#' @param WebsiteCaId &#91;required&#93; A unique identifier for the certificate authority.
#'
#' @export
describe_website_certificate_authority <- function (FleetArn, 
    WebsiteCaId) 
{
    op <- new_operation(name = "DescribeWebsiteCertificateAuthority", 
        http_method = "POST", http_path = "/describeWebsiteCertificateAuthority", 
        paginator = list())
    input <- describe_website_certificate_authority_input(FleetArn = FleetArn, 
        WebsiteCaId = WebsiteCaId)
    output <- describe_website_certificate_authority_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes a certificate authority (CA)
#'
#' Removes a certificate authority (CA).
#'
#' @section Accepted Parameters:
#' ```
#' disassociate_website_certificate_authority(
#'   FleetArn = "string",
#'   WebsiteCaId = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#' @param WebsiteCaId &#91;required&#93; A unique identifier for the CA.
#'
#' @export
disassociate_website_certificate_authority <- function (FleetArn, 
    WebsiteCaId) 
{
    op <- new_operation(name = "DisassociateWebsiteCertificateAuthority", 
        http_method = "POST", http_path = "/disassociateWebsiteCertificateAuthority", 
        paginator = list())
    input <- disassociate_website_certificate_authority_input(FleetArn = FleetArn, 
        WebsiteCaId = WebsiteCaId)
    output <- disassociate_website_certificate_authority_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a list of devices registered with the specified fleet
#'
#' Retrieves a list of devices registered with the specified fleet.
#'
#' @section Accepted Parameters:
#' ```
#' list_devices(
#'   FleetArn = "string",
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#' @param NextToken The pagination token used to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
#' @param MaxResults The maximum number of results to be included in the next page.
#'
#' @export
list_devices <- function (FleetArn, NextToken = NULL, MaxResults = NULL) 
{
    op <- new_operation(name = "ListDevices", http_method = "POST", 
        http_path = "/listDevices", paginator = list())
    input <- list_devices_input(FleetArn = FleetArn, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- list_devices_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a list of fleets for the current account and Region
#'
#' Retrieves a list of fleets for the current account and Region.
#'
#' @section Accepted Parameters:
#' ```
#' list_fleets(
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @param NextToken The pagination token used to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
#' @param MaxResults The maximum number of results to be included in the next page.
#'
#' @export
list_fleets <- function (NextToken = NULL, MaxResults = NULL) 
{
    op <- new_operation(name = "ListFleets", http_method = "POST", 
        http_path = "/listFleets", paginator = list())
    input <- list_fleets_input(NextToken = NextToken, MaxResults = MaxResults)
    output <- list_fleets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a list of certificate authorities added for the current account and Region
#'
#' Retrieves a list of certificate authorities added for the current account and Region.
#'
#' @section Accepted Parameters:
#' ```
#' list_website_certificate_authorities(
#'   FleetArn = "string",
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#' @param MaxResults The maximum number of results to be included in the next page.
#' @param NextToken The pagination token used to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
#'
#' @export
list_website_certificate_authorities <- function (FleetArn, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- new_operation(name = "ListWebsiteCertificateAuthorities", 
        http_method = "POST", http_path = "/listWebsiteCertificateAuthorities", 
        paginator = list())
    input <- list_website_certificate_authorities_input(FleetArn = FleetArn, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- list_website_certificate_authorities_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Signs the user out from all of their devices
#'
#' Signs the user out from all of their devices. The user can sign in again if they have valid credentials.
#'
#' @section Accepted Parameters:
#' ```
#' sign_out_user(
#'   FleetArn = "string",
#'   Username = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#' @param Username &#91;required&#93; The name of the user.
#'
#' @export
sign_out_user <- function (FleetArn, Username) 
{
    op <- new_operation(name = "SignOutUser", http_method = "POST", 
        http_path = "/signOutUser", paginator = list())
    input <- sign_out_user_input(FleetArn = FleetArn, Username = Username)
    output <- sign_out_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the audit stream configuration for the fleet
#'
#' Updates the audit stream configuration for the fleet.
#'
#' @section Accepted Parameters:
#' ```
#' update_audit_stream_configuration(
#'   FleetArn = "string",
#'   AuditStreamArn = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#' @param AuditStreamArn The ARN of the Amazon Kinesis data stream that receives the audit events.
#'
#' @export
update_audit_stream_configuration <- function (FleetArn, AuditStreamArn = NULL) 
{
    op <- new_operation(name = "UpdateAuditStreamConfiguration", 
        http_method = "POST", http_path = "/updateAuditStreamConfiguration", 
        paginator = list())
    input <- update_audit_stream_configuration_input(FleetArn = FleetArn, 
        AuditStreamArn = AuditStreamArn)
    output <- update_audit_stream_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the company network configuration for the fleet
#'
#' Updates the company network configuration for the fleet.
#'
#' @section Accepted Parameters:
#' ```
#' update_company_network_configuration(
#'   FleetArn = "string",
#'   VpcId = "string",
#'   SubnetIds = list(
#'     "string"
#'   ),
#'   SecurityGroupIds = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#' @param VpcId &#91;required&#93; The VPC with connectivity to associated websites.
#' @param SubnetIds &#91;required&#93; The subnets used for X-ENI connections from Amazon WorkLink rendering containers.
#' @param SecurityGroupIds &#91;required&#93; The security groups associated with access to the provided subnets.
#'
#' @export
update_company_network_configuration <- function (FleetArn, VpcId, 
    SubnetIds, SecurityGroupIds) 
{
    op <- new_operation(name = "UpdateCompanyNetworkConfiguration", 
        http_method = "POST", http_path = "/updateCompanyNetworkConfiguration", 
        paginator = list())
    input <- update_company_network_configuration_input(FleetArn = FleetArn, 
        VpcId = VpcId, SubnetIds = SubnetIds, SecurityGroupIds = SecurityGroupIds)
    output <- update_company_network_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the device policy configuration for the fleet
#'
#' Updates the device policy configuration for the fleet.
#'
#' @section Accepted Parameters:
#' ```
#' update_device_policy_configuration(
#'   FleetArn = "string",
#'   DeviceCaCertificate = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#' @param DeviceCaCertificate The certificate chain, including intermediate certificates and the root certificate authority certificate used to issue device certificates.
#'
#' @export
update_device_policy_configuration <- function (FleetArn, DeviceCaCertificate = NULL) 
{
    op <- new_operation(name = "UpdateDevicePolicyConfiguration", 
        http_method = "POST", http_path = "/updateDevicePolicyConfiguration", 
        paginator = list())
    input <- update_device_policy_configuration_input(FleetArn = FleetArn, 
        DeviceCaCertificate = DeviceCaCertificate)
    output <- update_device_policy_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates fleet metadata, such as DisplayName
#'
#' Updates fleet metadata, such as DisplayName.
#'
#' @section Accepted Parameters:
#' ```
#' update_fleet_metadata(
#'   FleetArn = "string",
#'   DisplayName = "string",
#'   OptimizeForEndUserLocation = TRUE|FALSE
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#' @param DisplayName The fleet name to display. The existing DisplayName is unset if null is passed.
#' @param OptimizeForEndUserLocation The option to optimize for better performance by routing traffic through the closest AWS Region to users, which may be outside of your home Region.
#'
#' @export
update_fleet_metadata <- function (FleetArn, DisplayName = NULL, 
    OptimizeForEndUserLocation = NULL) 
{
    op <- new_operation(name = "UpdateFleetMetadata", http_method = "POST", 
        http_path = "/UpdateFleetMetadata", paginator = list())
    input <- update_fleet_metadata_input(FleetArn = FleetArn, 
        DisplayName = DisplayName, OptimizeForEndUserLocation = OptimizeForEndUserLocation)
    output <- update_fleet_metadata_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the identity provider configuration for the fleet
#'
#' Updates the identity provider configuration for the fleet.
#'
#' @section Accepted Parameters:
#' ```
#' update_identity_provider_configuration(
#'   FleetArn = "string",
#'   IdentityProviderType = "SAML",
#'   IdentityProviderSamlMetadata = "string"
#' )
#' ```
#'
#' @param FleetArn &#91;required&#93; The ARN of the fleet.
#' @param IdentityProviderType &#91;required&#93; The type of identity provider.
#' @param IdentityProviderSamlMetadata The SAML metadata document provided by the customer's identity provider. The existing IdentityProviderSamlMetadata is unset if null is passed.
#'
#' @export
update_identity_provider_configuration <- function (FleetArn, 
    IdentityProviderType, IdentityProviderSamlMetadata = NULL) 
{
    op <- new_operation(name = "UpdateIdentityProviderConfiguration", 
        http_method = "POST", http_path = "/updateIdentityProviderConfiguration", 
        paginator = list())
    input <- update_identity_provider_configuration_input(FleetArn = FleetArn, 
        IdentityProviderType = IdentityProviderType, IdentityProviderSamlMetadata = IdentityProviderSamlMetadata)
    output <- update_identity_provider_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
