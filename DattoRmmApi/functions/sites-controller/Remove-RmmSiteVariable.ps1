function Remove-RmmSiteVariable {
    <#
    .SYNOPSIS 
    Removes a site-level variable

    .DESCRIPTION
    Removes the site variable identified by the given site Uid and variable Id
    
    .PARAMETER siteUid
    Uid of the site to remove the variable from

    .PARAMETER variableId
    Id of the variable to remove
    
    .EXAMPLE
    Remove-RmmSiteVariable -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -variableId 01234
    #>

    Param (
        [Parameter(Mandatory=$true)] 
        [string]$siteUid,
        [Parameter(Mandatory=$true)] 
        [string]$variableId
    )

    New-RmmApiRequest -method DELETE -endpoint "site/$siteUid/variable/$variableId"
}