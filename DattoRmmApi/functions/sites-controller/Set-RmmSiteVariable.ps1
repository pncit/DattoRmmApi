function Set-RmmSiteVariable {
    <#
    .SYNOPSIS 
    Modifies a site-level variable

    .DESCRIPTION
    Updates the site variable identified by the given site Uid and variable Id
    
    .PARAMETER siteUid
    Uid of the site with the variable to modify

    .PARAMETER variableId
    Id of the variable to modify

    .PARAMETER name
	The name to apply to the variable

    .PARAMETER value
    The value to apply to the variable
    
    .EXAMPLE
    Set-RmmSiteVariable -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -variableId 01234 -name "foo" -value "bar"
    #>

    Param (
        [Parameter(Mandatory=$true)] 
        [string]$siteUid,
        [Parameter(Mandatory=$true)] 
        [string]$variableId,
        [Parameter(Mandatory=$true)] 
        [string]$name,
        [Parameter(Mandatory=$true)] 
        [string]$value
    )

    $requestBody = @{}
    $requestBody.Add( 'name',$name )
    $requestBody.Add( 'value',$value )

    New-RmmApiRequest -method POST -endpoint "site/$siteUid/variable/$variableId" -requestBody ( $requestBody | ConvertTo-Json )
}