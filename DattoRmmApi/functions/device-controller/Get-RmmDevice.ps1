function Get-RmmDevice {
    <#
    .SYNOPSIS 
    Get data for a given device

    .DESCRIPTION
    Fetches data of the device identified by the given device Uid.

    .PARAMETER deviceUid
    Uid of the device

    .OUTPUTS
    [System.Object] PSCustomObject containing device data


    .EXAMPLE
    $device = Get-RmmDevice -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$deviceUid
    )

    return New-RmmApiRequest -method GET -endpoint "device/$deviceUid"
}