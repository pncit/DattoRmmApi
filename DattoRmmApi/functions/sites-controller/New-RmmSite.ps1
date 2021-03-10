function New-RmmSite {
    <#
    .SYNOPSIS 
    Creates a new site

    .DESCRIPTION
    Creates a new site in the authenticated user's account
    
	.PARAMETER description
	Site description

    .PARAMETER name
    Site name

    .PARAMETER notes
    Site notes
    
    .PARAMETER onDemand
    Switch to set whether or not site is 'on demand'
    
    .PARAMETER proxyHost
    Proxy Host
    
    .PARAMETER proxyPassword
    Proxy password
    
    .PARAMETER proxyPort
    Proxy port
    
    .PARAMETER proxyType
    Proxy type (http, socks4, socks5)
    
    .PARAMETER proxyUsername
    Proxy user name
    
    .PARAMETER splashtopAutoInstall
    Switch to set whether or not to autoinstall splashtop

    .EXAMPLE
    $newSite = New-RmmSite -name "foo" -onDemand

    #>

    Param (
        [Parameter(Mandatory=$false)] 
        [string]$description,
        [Parameter(Mandatory=$true)] 
        [string]$name,
        [Parameter(Mandatory=$false)] 
        [string]$notes,
        [Parameter(Mandatory=$false)]
        [switch]$onDemand,
        [Parameter(Mandatory=$false)] 
        [string]$proxyHost,
        [Parameter(Mandatory=$false)] 
        [string]$proxyPassword,
        [Parameter(Mandatory=$false)] 
        [string]$proxyPort,
        [Parameter(Mandatory=$false)] 
        [ValidateSet("http","socks4","socks5")]
        [string]$proxyType,
        [Parameter(Mandatory=$false)] 
        [string]$proxyUsername,
        [Parameter(Mandatory=$false)]
        [switch]$splashtopAutoInstall
    )

    $proxySettings = @{}
	if ( $PSBoundParameters.ContainsKey( 'proxyHost' ) ) { $proxySettings.Add( 'host' , $proxyHost ) }
	if ( $PSBoundParameters.ContainsKey( 'proxyPassword' ) ) { $proxySettings.Add( 'password' , $proxyPassword ) }
	if ( $PSBoundParameters.ContainsKey( 'proxyPort' ) ) { $proxySettings.Add( 'port' , $proxyPort ) }
	if ( $PSBoundParameters.ContainsKey( 'proxyType' ) ) { $proxySettings.Add( 'type' , $proxyType ) }
	if ( $PSBoundParameters.ContainsKey( 'proxyUsername' ) ) { $proxySettings.Add( 'username' , $proxyUsername ) }

    $requestBody = @{}
	if ( $PSBoundParameters.ContainsKey( 'description' ) ) { $requestBody.Add( 'description' , $description ) }
    $requestBody.Add( 'name' , $name )
	if ( $PSBoundParameters.ContainsKey( 'notes' ) ) { $requestBody.Add( 'notes' , $notes ) }
	if ( $PSBoundParameters.ContainsKey( 'onDemand' ) ) { $requestBody.Add( 'onDemand' , $notes ) }
    if ( $proxySettings.Count -gt 0 ) { $requestBody.Add( 'proxySettings' , $proxySettings ) }
	if ( $PSBoundParameters.ContainsKey( 'splashtopAutoInstall' ) ) { $requestBody.Add( 'splashtopAutoInstall' , $true ) }

    New-RmmApiRequest -method PUT -endpoint 'site' -requestBody ( $requestBody | ConvertTo-Json )
}