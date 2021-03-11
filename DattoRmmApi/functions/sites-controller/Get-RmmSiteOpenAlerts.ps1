function Get-RmmSiteOpenAlerts {
    <#
    .SYNOPSIS 
    Get open alerts for a given site

    .DESCRIPTION
    Fetches the open alerts of the site identified by the given site Uid

    .PARAMETER siteUid
    Uid of the site

    .OUTPUTS
    [System.Array] Object containing alert data

    .EXAMPLE
    $site = Get-RmmSiteOpenAlerts -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$siteUid
    )

    return New-RmmApiRequest -method GET -endpoint "site/$siteUid/alerts/open"
}