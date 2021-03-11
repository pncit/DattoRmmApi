function Get-RmmDeviceSoftwareAuditData {
    <#
    .SYNOPSIS 
    Get software audit data for a given device

    .DESCRIPTION
    Fetches audited software of the generic device identified by the given device Uid
    
    .PARAMETER deviceUid
    Uid of the device

    .OUTPUTS
    [System.Object] PSCustomObject containing software audit data

    .EXAMPLE
    $software = Get-RmmDeviceSoftwareAuditData -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$deviceUid
    )

    return New-RmmApiRequest -method GET -endpoint "audit/device/$deviceUid/software"
}