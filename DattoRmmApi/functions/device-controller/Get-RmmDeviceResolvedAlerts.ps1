function Get-RmmDeviceResolvedAlerts {
    <#
    .SYNOPSIS 
    Get resolved alerts for a given device

    .DESCRIPTION
    Fetches the resolved alerts of the device identified by the given device Uid

    .PARAMETER deviceUid
    Uid of the device

    .OUTPUTS
    [System.Array] Object containing alert data

    .EXAMPLE
    $resolvedAlerts = Get-RmmDeviceResolvedAlerts -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$deviceUid
    )

    return New-RmmApiRequest -method GET -endpoint "device/$deviceUid/alerts/resolved"
}