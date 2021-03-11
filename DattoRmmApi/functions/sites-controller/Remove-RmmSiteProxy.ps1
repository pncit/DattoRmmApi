function Remove-RmmSiteProxy {
    <#
    .SYNOPSIS 
    Deletes a site's proxy settings

    .DESCRIPTION
    Deletes site proxy settings for the site identified by the given site Uid
    
	.PARAMETER siteUid
    Uid of the site to modify

    .EXAMPLE
    Remove-RmmSiteProxy -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    Param (
        [Parameter(Mandatory=$true)] 
        [string]$siteUid
    )

    New-RmmApiRequest -method DELETE -endpoint "site/$siteUid/settings/proxy"
}