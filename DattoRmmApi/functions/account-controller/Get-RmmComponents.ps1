function Get-RmmComponents {
    <#
    .SYNOPSIS 
    Gets component information

    .DESCRIPTION
    Fetches the components records of the authenticated user's account

    .OUTPUTS
    [System.Object] custom object containing request response data

    .EXAMPLE
    $components = Get-RmmComponents

    #>

    return New-RmmApiRequest -method GET -endpoint 'account/components'
}