function Get-RmmAccountVariables {
    <#
    .SYNOPSIS 
    Gets account-level variables

    .DESCRIPTION
    Fetches the account variables

    .OUTPUTS
    [System.Object] custom object containing request response data

    .EXAMPLE
    $accountVariables = Get-RmmAccountVariables

    #>

    return New-RmmApiRequest -method GET -endpoint 'account/variables'
}