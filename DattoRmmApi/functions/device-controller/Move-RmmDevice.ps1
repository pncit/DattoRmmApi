function Move-RmmDevice {
    <#
    .SYNOPSIS 
    Moves a device to a new site

    .DESCRIPTION
    Moves a device from one site to another site

    .PARAMETER deviceUid
    Uid of the device

    .PARAMETER siteUid
    Uid of the site to move the device to

    .EXAMPLE
    Move-RmmDevice -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$deviceUid,
        [parameter(Mandatory=$true)]
        [string]$siteUid
    )

    New-RmmApiRequest -method GET -endpoint "device/$deviceUid/site/$siteUid"
}