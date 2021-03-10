function Get-RmmSiteVariables {
    <#
    .SYNOPSIS 
    Gets all variables for a site
    
    .DESCRIPTION
    Fetches the variables of the site identified by the given site Uid

    .PARAMETER siteUid
    Uid of the site

    .OUTPUTS
    [System.Object] custom object containing request response data

    .EXAMPLE
    $variables = Get-RmmSiteVariables -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$siteUid
    )

    return New-RmmApiRequest -method GET -endpoint "site/$siteUid/variables"
}