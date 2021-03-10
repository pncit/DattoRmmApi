function New-RmmSiteVariable {
    <#
    .SYNOPSIS 
    Creates an site-level variable

    .DESCRIPTION
    Creates a site variable in the site identified by the given site Uid
    
    .PARAMETER siteUid
    Uid of the site to add a variable to

    .PARAMETER name
	The name of the variable

    .PARAMETER value
    The value of the variable

    .PARAMETER masked
    Flag to mask the variable value
    
    .EXAMPLE
    New-RmmSiteVariable -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -name "foo" -value "bar"
    New-RmmSiteVariable -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -name "foo" -value "bar" -masked

    #>

    Param (
        [Parameter(Mandatory=$true)] 
        [string]$siteUid,
        [Parameter(Mandatory=$true)] 
        [string]$name,
        [Parameter(Mandatory=$true)] 
        [string]$value,
        [Parameter(Mandatory=$false)]
        [switch]$masked
    )

    $requestBody = @{}
    $requestBody.Add( 'name',$name )
    $requestBody.Add( 'value',$value )
    If ( $PSBoundParameters.ContainsKey( 'masked' ) ) {
        $requestBody.Add( 'masked' , $true )
    } else {
        $requestBody.Add( 'masked' , $false )
    }

    New-RmmApiRequest -method PUT -endpoint "site/$siteUid/variable" -requestBody ( $requestBody | ConvertTo-Json )
}