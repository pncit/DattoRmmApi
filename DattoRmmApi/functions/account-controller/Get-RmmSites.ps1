function Get-RmmSites {
    <#
    .SYNOPSIS 
    Gets all sites
    
    .DESCRIPTION
    Fetches the sites of the authenticated user's account

    .OUTPUTS
    [System.Object] custom object containing request response data

    .EXAMPLE
    $sites = Get-RmmSites

    #>

    return New-RmmApiRequest -method GET -endpoint 'account/sites'
}