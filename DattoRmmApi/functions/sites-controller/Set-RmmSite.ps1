function Set-RmmSite {
    <#
    .SYNOPSIS 
    Modifies a site

    .DESCRIPTION
    Updates the site identified by the given site Uid
    
	.PARAMETER siteUid
    Uid of the site to modify
    
    .PARAMETER description
	Site description

    .PARAMETER name
    Site name

    .PARAMETER notes
    Site notes
    
    .PARAMETER onDemand
    Switch to set whether or not site is 'on demand'
    
    .PARAMETER splashtopAutoInstall
    Switch to set whether or not to autoinstall splashtop

    .EXAMPLE
    $newSite = Set-RmmSite -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -name "foo" -onDemand
    #>

    Param (
        [Parameter(Mandatory=$true)] 
        [string]$siteUid,
        [Parameter(Mandatory=$false)] 
        [string]$description,
        [Parameter(Mandatory=$true)] 
        [string]$name,
        [Parameter(Mandatory=$false)] 
        [string]$notes,
        [Parameter(Mandatory=$false)]
        [switch]$onDemand,
        [Parameter(Mandatory=$false)]
        [switch]$splashtopAutoInstall
    )

    $requestBody = @{}
	if ( $PSBoundParameters.ContainsKey( 'description' ) ) { $requestBody.Add( 'description' , $description ) }
    $requestBody.Add( 'name' , $name )
	if ( $PSBoundParameters.ContainsKey( 'notes' ) ) { $requestBody.Add( 'notes' , $notes ) }
	if ( $PSBoundParameters.ContainsKey( 'onDemand' ) ) { $requestBody.Add( 'onDemand' , $notes ) }
	if ( $PSBoundParameters.ContainsKey( 'splashtopAutoInstall' ) ) { $requestBody.Add( 'splashtopAutoInstall' , $true ) }

    New-RmmApiRequest -method POST -endpoint "site/$siteUid" -requestBody ( $requestBody | ConvertTo-Json )
}