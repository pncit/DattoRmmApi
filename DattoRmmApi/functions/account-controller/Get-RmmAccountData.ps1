function Get-RmmAccountData {
    <#
    .SYNOPSIS 
    Gets RMM account data

    .DESCRIPTION
    Fetches the authenticated user's account data

    .OUTPUTS
    [System.Object] custom object containing request response data

    .EXAMPLE
    $accountData = Get-RmmAccountData

    #>

    return New-RmmApiRequest -method GET -endpoint 'account'
}