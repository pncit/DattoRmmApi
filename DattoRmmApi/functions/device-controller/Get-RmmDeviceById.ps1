function Get-RmmDeviceById {
    <#
    .SYNOPSIS 
    Get data for a given device

    .DESCRIPTION
    Fetches data of the device identified by the given device id.

    .PARAMETER deviceId
    Id of the device

    .OUTPUTS
    [System.Object] PSCustomObject containing device data

    .EXAMPLE
    $device = Get-RmmDevice -deviceId '012345'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$deviceId
    )

    return New-RmmApiRequest -method GET -endpoint "device/id/$deviceId"
}