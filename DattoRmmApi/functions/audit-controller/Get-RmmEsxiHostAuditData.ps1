function Get-RmmEsxiHostAuditData {
    <#
    .SYNOPSIS 
    Get audit data for a given ESXi host

    .DESCRIPTION
    Fetches audit data of the ESXi host identified by the given device Uid.
    
    .PARAMETER deviceUid
    Uid of the device

    .OUTPUTS
    [System.Object] PSCustomObject containing device audit data

    .EXAMPLE
    $data = Get-RmmEsxiHostAuditData -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$deviceUid
    )

    return New-RmmApiRequest -method GET -endpoint "audit/esxihost/$deviceUid"
}