function Get-RmmDeviceOpenAlerts {
    <#
    .SYNOPSIS 
    Get open alerts for a given device

    .DESCRIPTION
    Fetches the open alerts of the device identified by the given device Uid

    .PARAMETER deviceUid
    Uid of the device

    .OUTPUTS
    [System.Object] custom object containing request response data

    .EXAMPLE
    $openAlerts = Get-RmmDeviceOpenAlerts -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$deviceUid
    )

    return New-RmmApiRequest -method GET -endpoint "device/$deviceUid/alerts/open"
}