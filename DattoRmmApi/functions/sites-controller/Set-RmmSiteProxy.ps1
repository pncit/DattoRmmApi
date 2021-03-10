function Set-RmmSiteProxy {
    <#
    .SYNOPSIS 
    Modifies a site proxy settings

    .DESCRIPTION
    Creates/updates the proxy settings for the site identified by the given site Uid
    
	.PARAMETER siteUid
    Uid of the site to modify
    
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

    .EXAMPLE
    $response = Set-RmmSiteProxy -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -proxyHost "http::/host.com" -proxyType "http"

    #>

    Param (
        [Parameter(Mandatory=$true)] 
        [string]$siteUid,
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
        [string]$proxyUsername
    )

    $requestBody = @{}
	if ( $PSBoundParameters.ContainsKey( 'proxyHost' ) ) { $requestBody.Add( 'host' , $proxyHost ) }
	if ( $PSBoundParameters.ContainsKey( 'proxyPassword' ) ) { $requestBody.Add( 'password' , $proxyPassword ) }
	if ( $PSBoundParameters.ContainsKey( 'proxyPort' ) ) { $requestBody.Add( 'port' , $proxyPort ) }
	if ( $PSBoundParameters.ContainsKey( 'proxyType' ) ) { $requestBody.Add( 'type' , $proxyType ) }
	if ( $PSBoundParameters.ContainsKey( 'proxyUsername' ) ) { $requestBody.Add( 'username' , $proxyUsername ) }

    New-RmmApiRequest -method POST -endpoint "site/$siteUid/settings/proxy" -requestBody ( $requestBody | ConvertTo-Json )
}