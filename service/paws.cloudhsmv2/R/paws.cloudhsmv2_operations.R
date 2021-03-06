# This file is generated by make.paws. Please do not edit here.

#' @importFrom paws.common new_operation new_request send_request
NULL

#' Copy an AWS CloudHSM cluster backup to a different region
#'
#' Copy an AWS CloudHSM cluster backup to a different region.
#'
#' @section Accepted Parameters:
#' ```
#' copy_backup_to_region(
#'   DestinationRegion = "string",
#'   BackupId = "string"
#' )
#' ```
#'
#' @param DestinationRegion &#91;required&#93; The AWS region that will contain your copied CloudHSM cluster backup.
#' @param BackupId &#91;required&#93; The ID of the backup that will be copied to the destination region.
#'
#' @export
copy_backup_to_region <- function (DestinationRegion, BackupId) 
{
    op <- new_operation(name = "CopyBackupToRegion", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- copy_backup_to_region_input(DestinationRegion = DestinationRegion, 
        BackupId = BackupId)
    output <- copy_backup_to_region_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new AWS CloudHSM cluster
#'
#' Creates a new AWS CloudHSM cluster.
#'
#' @section Accepted Parameters:
#' ```
#' create_cluster(
#'   SubnetIds = list(
#'     "string"
#'   ),
#'   HsmType = "string",
#'   SourceBackupId = "string"
#' )
#' ```
#'
#' @param SubnetIds &#91;required&#93; The identifiers (IDs) of the subnets where you are creating the cluster. You must specify at least one subnet. If you specify multiple subnets, they must meet the following criteria:
#' 
#' -   All subnets must be in the same virtual private cloud (VPC).
#' 
#' -   You can specify only one subnet per Availability Zone.
#' @param HsmType &#91;required&#93; The type of HSM to use in the cluster. Currently the only allowed value is `hsm1.medium`.
#' @param SourceBackupId The identifier (ID) of the cluster backup to restore. Use this value to restore the cluster from a backup instead of creating a new cluster. To find the backup ID, use DescribeBackups.
#'
#' @export
create_cluster <- function (SubnetIds, HsmType, SourceBackupId = NULL) 
{
    op <- new_operation(name = "CreateCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_cluster_input(SubnetIds = SubnetIds, HsmType = HsmType, 
        SourceBackupId = SourceBackupId)
    output <- create_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster
#'
#' Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster.
#'
#' @section Accepted Parameters:
#' ```
#' create_hsm(
#'   ClusterId = "string",
#'   AvailabilityZone = "string",
#'   IpAddress = "string"
#' )
#' ```
#'
#' @param ClusterId &#91;required&#93; The identifier (ID) of the HSM\'s cluster. To find the cluster ID, use DescribeClusters.
#' @param AvailabilityZone &#91;required&#93; The Availability Zone where you are creating the HSM. To find the cluster\'s Availability Zones, use DescribeClusters.
#' @param IpAddress The HSM\'s IP address. If you specify an IP address, use an available address from the subnet that maps to the Availability Zone where you are creating the HSM. If you don\'t specify an IP address, one is chosen for you from that subnet.
#'
#' @export
create_hsm <- function (ClusterId, AvailabilityZone, IpAddress = NULL) 
{
    op <- new_operation(name = "CreateHsm", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_hsm_input(ClusterId = ClusterId, AvailabilityZone = AvailabilityZone, 
        IpAddress = IpAddress)
    output <- create_hsm_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specified AWS CloudHSM backup
#'
#' Deletes a specified AWS CloudHSM backup. A backup can be restored up to 7 days after the DeleteBackup request. For more information on restoring a backup, see RestoreBackup
#'
#' @section Accepted Parameters:
#' ```
#' delete_backup(
#'   BackupId = "string"
#' )
#' ```
#'
#' @param BackupId &#91;required&#93; The ID of the backup to be deleted. To find the ID of a backup, use the DescribeBackups operation.
#'
#' @export
delete_backup <- function (BackupId) 
{
    op <- new_operation(name = "DeleteBackup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_backup_input(BackupId = BackupId)
    output <- delete_backup_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified AWS CloudHSM cluster
#'
#' Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must delete all HSMs in the cluster. To see if the cluster contains any HSMs, use DescribeClusters. To delete an HSM, use DeleteHsm.
#'
#' @section Accepted Parameters:
#' ```
#' delete_cluster(
#'   ClusterId = "string"
#' )
#' ```
#'
#' @param ClusterId &#91;required&#93; The identifier (ID) of the cluster that you are deleting. To find the cluster ID, use DescribeClusters.
#'
#' @export
delete_cluster <- function (ClusterId) 
{
    op <- new_operation(name = "DeleteCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_cluster_input(ClusterId = ClusterId)
    output <- delete_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified HSM
#'
#' Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP address of the HSM\'s elastic network interface (ENI), or the ID of the HSM\'s ENI. You need to specify only one of these values. To find these values, use DescribeClusters.
#'
#' @section Accepted Parameters:
#' ```
#' delete_hsm(
#'   ClusterId = "string",
#'   HsmId = "string",
#'   EniId = "string",
#'   EniIp = "string"
#' )
#' ```
#'
#' @param ClusterId &#91;required&#93; The identifier (ID) of the cluster that contains the HSM that you are deleting.
#' @param HsmId The identifier (ID) of the HSM that you are deleting.
#' @param EniId The identifier (ID) of the elastic network interface (ENI) of the HSM that you are deleting.
#' @param EniIp The IP address of the elastic network interface (ENI) of the HSM that you are deleting.
#'
#' @export
delete_hsm <- function (ClusterId, HsmId = NULL, EniId = NULL, 
    EniIp = NULL) 
{
    op <- new_operation(name = "DeleteHsm", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_hsm_input(ClusterId = ClusterId, HsmId = HsmId, 
        EniId = EniId, EniIp = EniIp)
    output <- delete_hsm_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about backups of AWS CloudHSM clusters
#'
#' Gets information about backups of AWS CloudHSM clusters.
#' 
#' This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a `NextToken` value. Use this value in a subsequent `DescribeBackups` request to get more backups. When you receive a response with no `NextToken` (or an empty or null value), that means there are no more backups to get.
#'
#' @section Accepted Parameters:
#' ```
#' describe_backups(
#'   NextToken = "string",
#'   MaxResults = 123,
#'   Filters = list(
#'     list(
#'       "string"
#'     )
#'   ),
#'   SortAscending = TRUE|FALSE
#' )
#' ```
#'
#' @param NextToken The `NextToken` value that you received in the previous response. Use this value to get more backups.
#' @param MaxResults The maximum number of backups to return in the response. When there are more backups than the number you specify, the response contains a `NextToken` value.
#' @param Filters One or more filters to limit the items returned in the response.
#' 
#' Use the `backupIds` filter to return only the specified backups. Specify backups by their backup identifier (ID).
#' 
#' Use the `sourceBackupIds` filter to return only the backups created from a source backup. The `sourceBackupID` of a source backup is returned by the CopyBackupToRegion operation.
#' 
#' Use the `clusterIds` filter to return only the backups for the specified clusters. Specify clusters by their cluster identifier (ID).
#' 
#' Use the `states` filter to return only backups that match the specified state.
#' @param SortAscending 
#'
#' @export
describe_backups <- function (NextToken = NULL, MaxResults = NULL, 
    Filters = NULL, SortAscending = NULL) 
{
    op <- new_operation(name = "DescribeBackups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_backups_input(NextToken = NextToken, MaxResults = MaxResults, 
        Filters = Filters, SortAscending = SortAscending)
    output <- describe_backups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about AWS CloudHSM clusters
#'
#' Gets information about AWS CloudHSM clusters.
#' 
#' This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a `NextToken` value. Use this value in a subsequent `DescribeClusters` request to get more clusters. When you receive a response with no `NextToken` (or an empty or null value), that means there are no more clusters to get.
#'
#' @section Accepted Parameters:
#' ```
#' describe_clusters(
#'   Filters = list(
#'     list(
#'       "string"
#'     )
#'   ),
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @param Filters One or more filters to limit the items returned in the response.
#' 
#' Use the `clusterIds` filter to return only the specified clusters. Specify clusters by their cluster identifier (ID).
#' 
#' Use the `vpcIds` filter to return only the clusters in the specified virtual private clouds (VPCs). Specify VPCs by their VPC identifier (ID).
#' 
#' Use the `states` filter to return only clusters that match the specified state.
#' @param NextToken The `NextToken` value that you received in the previous response. Use this value to get more clusters.
#' @param MaxResults The maximum number of clusters to return in the response. When there are more clusters than the number you specify, the response contains a `NextToken` value.
#'
#' @export
describe_clusters <- function (Filters = NULL, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- new_operation(name = "DescribeClusters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_clusters_input(Filters = Filters, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- describe_clusters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate
#'
#' Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA\'s root certificate. Before you can claim a cluster, you must sign the cluster\'s certificate signing request (CSR) with your issuing CA. To get the cluster\'s CSR, use DescribeClusters.
#'
#' @section Accepted Parameters:
#' ```
#' initialize_cluster(
#'   ClusterId = "string",
#'   SignedCert = "string",
#'   TrustAnchor = "string"
#' )
#' ```
#'
#' @param ClusterId &#91;required&#93; The identifier (ID) of the cluster that you are claiming. To find the cluster ID, use DescribeClusters.
#' @param SignedCert &#91;required&#93; The cluster certificate issued (signed) by your issuing certificate authority (CA). The certificate must be in PEM format and can contain a maximum of 5000 characters.
#' @param TrustAnchor &#91;required&#93; The issuing certificate of the issuing certificate authority (CA) that issued (signed) the cluster certificate. This can be a root (self-signed) certificate or a certificate chain that begins with the certificate that issued the cluster certificate and ends with a root certificate. The certificate or certificate chain must be in PEM format and can contain a maximum of 5000 characters.
#'
#' @export
initialize_cluster <- function (ClusterId, SignedCert, TrustAnchor) 
{
    op <- new_operation(name = "InitializeCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- initialize_cluster_input(ClusterId = ClusterId, 
        SignedCert = SignedCert, TrustAnchor = TrustAnchor)
    output <- initialize_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of tags for the specified AWS CloudHSM cluster
#'
#' Gets a list of tags for the specified AWS CloudHSM cluster.
#' 
#' This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a `NextToken` value. Use this value in a subsequent `ListTags` request to get more tags. When you receive a response with no `NextToken` (or an empty or null value), that means there are no more tags to get.
#'
#' @section Accepted Parameters:
#' ```
#' list_tags(
#'   ResourceId = "string",
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @param ResourceId &#91;required&#93; The cluster identifier (ID) for the cluster whose tags you are getting. To find the cluster ID, use DescribeClusters.
#' @param NextToken The `NextToken` value that you received in the previous response. Use this value to get more tags.
#' @param MaxResults The maximum number of tags to return in the response. When there are more tags than the number you specify, the response contains a `NextToken` value.
#'
#' @export
list_tags <- function (ResourceId, NextToken = NULL, MaxResults = NULL) 
{
    op <- new_operation(name = "ListTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_tags_input(ResourceId = ResourceId, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- list_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Restores a specified AWS CloudHSM backup that is in the PENDING_DELETION state
#'
#' Restores a specified AWS CloudHSM backup that is in the `PENDING_DELETION` state. For more information on deleting a backup, see DeleteBackup.
#'
#' @section Accepted Parameters:
#' ```
#' restore_backup(
#'   BackupId = "string"
#' )
#' ```
#'
#' @param BackupId &#91;required&#93; The ID of the backup to be restored. To find the ID of a backup, use the DescribeBackups operation.
#'
#' @export
restore_backup <- function (BackupId) 
{
    op <- new_operation(name = "RestoreBackup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- restore_backup_input(BackupId = BackupId)
    output <- restore_backup_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds or overwrites one or more tags for the specified AWS CloudHSM cluster
#'
#' Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.
#'
#' @section Accepted Parameters:
#' ```
#' tag_resource(
#'   ResourceId = "string",
#'   TagList = list(
#'     list(
#'       Key = "string",
#'       Value = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @param ResourceId &#91;required&#93; The cluster identifier (ID) for the cluster that you are tagging. To find the cluster ID, use DescribeClusters.
#' @param TagList &#91;required&#93; A list of one or more tags.
#'
#' @export
tag_resource <- function (ResourceId, TagList) 
{
    op <- new_operation(name = "TagResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- tag_resource_input(ResourceId = ResourceId, TagList = TagList)
    output <- tag_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes the specified tag or tags from the specified AWS CloudHSM cluster
#'
#' Removes the specified tag or tags from the specified AWS CloudHSM cluster.
#'
#' @section Accepted Parameters:
#' ```
#' untag_resource(
#'   ResourceId = "string",
#'   TagKeyList = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @param ResourceId &#91;required&#93; The cluster identifier (ID) for the cluster whose tags you are removing. To find the cluster ID, use DescribeClusters.
#' @param TagKeyList &#91;required&#93; A list of one or more tag keys for the tags that you are removing. Specify only the tag keys, not the tag values.
#'
#' @export
untag_resource <- function (ResourceId, TagKeyList) 
{
    op <- new_operation(name = "UntagResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- untag_resource_input(ResourceId = ResourceId, TagKeyList = TagKeyList)
    output <- untag_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
