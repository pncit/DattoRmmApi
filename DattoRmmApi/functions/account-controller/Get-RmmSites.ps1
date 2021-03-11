function Get-RmmSites {
    <#
    .SYNOPSIS 
    Gets all sites
    
    .DESCRIPTION
    Fetches the sites of the authenticated user's account

    .OUTPUTS
    [System.Array] Object containing site data

    .EXAMPLE
    $sites = Get-RmmSites
    #>

    return New-RmmApiRequest -method GET -endpoint 'account/sites'
}