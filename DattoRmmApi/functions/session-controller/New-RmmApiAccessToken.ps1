function New-RmmApiAccessToken {
    <#
    .SYNOPSIS 
    Generates a new Datto RMM API Access Token

    .DESCRIPTION
    This function returns an OAuth2 authorization token, but is only run in the context of Start-DraSession
    
    .PARAMETER apiUrl
    Region-specific API Url

    .PARAMETER accessKey
    API Access Key

    .PARAMETER secretKey
    API Secret Key

    .OUTPUTS
    [string] Authorization Token

    .NOTES
    This is not built to be executed on its own and assumes that the script-level variable $rmmApiUrl has been defined.
    #>
	param
	(
        [parameter(mandatory=$true)]
        [validateNotNullorEmpty()]
        [string]$accessKey,

        [parameter(mandatory=$true)]
        [validateNotNullorEmpty()]
        [string]$secretKey
	)

	# Specify security protocols
	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]'Tls11,Tls12'

	# Convert password to secure string
	$securePassword = ConvertTo-SecureString -String 'public' -AsPlainText -Force

	# Define parameters for Invoke-WebRequest cmdlet
	$params = @{
		Credential	=	New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList ('public-client', $securePassword)
		Uri			=	'{0}/auth/oauth/token' -f $script:RmmApiBaseUrl
		Method      =	'POST'
		ContentType = 	'application/x-www-form-urlencoded'
		Body        = 	'grant_type=password&username={0}&password={1}' -f $accessKey, $secretKey
	}

	# Request access token
	return ( Invoke-WebRequest @params -UseBasicParsing | ConvertFrom-Json ).access_token
}