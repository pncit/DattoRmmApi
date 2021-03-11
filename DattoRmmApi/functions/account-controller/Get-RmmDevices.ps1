function Get-RmmDevices {
    <#
    .SYNOPSIS 
    Gets all devices in an account
    
    .DESCRIPTION
    Fetches the devices of the authenticated user's account

    .OUTPUTS
    [System.Array] Object containing device data

    .EXAMPLE
    $devices = Get-RmmDevices
    #>

    return New-RmmApiRequest -method GET -endpoint 'account/devices'
}