function Get-RmmSite {
    <#
    .SYNOPSIS 
    Gets data for the given site
    
    .DESCRIPTION
    Fetches data of the site (including total number of devices) identified by the given site Uid.

    .PARAMETER siteUid
    Uid of the site

    .OUTPUTS
    [System.Object] PSCustomObject containing site data

    .EXAMPLE
    $site = Get-RmmSite -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$siteUid
    )

    return New-RmmApiRequest -method GET -endpoint "site/$siteUid"
}