function Get-RmmSiteDevices {
    <#
    .SYNOPSIS 
    Gets all devices in an site
    
    .DESCRIPTION
    Fetches the devices records of the site identified by the given site Uid

    .PARAMETER siteUid
    Uid of the site

    .OUTPUTS
    [System.Array] Object containing device data

    .EXAMPLE
    $devices = Get-RmmSiteDevices -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$siteUid
    )

    return New-RmmApiRequest -method GET -endpoint "site/$siteUid/devices"
}