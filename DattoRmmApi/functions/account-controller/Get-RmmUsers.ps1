function Get-RmmUsers {
    <#
    .SYNOPSIS 
    Gets all users
    
    .DESCRIPTION
    Fetches the authentication users records of the authenticated user's account.

    .OUTPUTS
    [System.Object] custom object containing request response data

    .EXAMPLE
    $users = Get-RmmUsers

    #>

    return New-RmmApiRequest -method GET -endpoint 'account/users'
}