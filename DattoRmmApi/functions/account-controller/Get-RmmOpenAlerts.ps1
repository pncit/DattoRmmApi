function Get-RmmOpenAlerts {
    <#
    .SYNOPSIS 
    Gets all open alerts
    
    .DESCRIPTION
    Fetches open alerts of the authenticated user's account

    .OUTPUTS
    [System.Array] Object containing alert data

    .EXAMPLE
    $openAlerts = Get-RmmOpenAlerts
    #>

    return New-RmmApiRequest -method GET -endpoint 'account/alerts/open'
}