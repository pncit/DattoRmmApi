function Start-RmmApiSession {
    <#
    .SYNOPSIS 
    Establishes the script variables needed to use the Datto RMM API module

    .DESCRIPTION
    This will define script variables containing parameters required for running queries agains the Datto RMM REST API
    See https://help.aem.autotask.net/en/Content/2SETUP/APIv2.htm for details on enabling the API and defining key pairs

    .PARAMETER platform
    Datto RMM Platform. Allowable values are:
    pinotage
    merlot
    concord
    zinfandel
    syrah

    .PARAMETER accessKey
    User-specific API Key/Access Key

    .PARAMETER secretKey
    User-specific Secret Key/API Secret Key

    .OUTPUTS
    None

    .EXAMPLE
    Start-RmmApiSession -platform "zinfandel" -accessKey "01234" -secretKey "abcde"

    #>
    param 
    (
        [parameter(Mandatory=$true)]
        [ValidateSet("pinotage","merlot","concord","zinfandel","syrah")]
        [string]$platform,

        [parameter(Mandatory=$true)]
        [validateNotNullorEmpty()]
        [string]$accessKey,

        [parameter(Mandatory=$false)]
        [string]$secretKey
    )

    Set-Variable -Name RmmApiBaseUrl -Value "https://$platform-api.centrastage.net" -Scope Script
    Set-Variable -Name RmmApiUrl -Value "https://$platform-api.centrastage.net/api/v2" -Scope Script
    Set-Variable -Name RmmApiAccessToken -Value (New-RmmApiAccessToken -accessKey $accessKey -secretKey $secretKey) -Scope Script
}