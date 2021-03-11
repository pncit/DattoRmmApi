function Get-RmmResolvedAlerts {
    <#
    .SYNOPSIS 
    Gets all resolved alerts
    
    .DESCRIPTION
    Fetches resolved alerts of the authenticated user's account

    .OUTPUTS
    [System.Array] Object containing alert data

    .EXAMPLE
    $resolvedAlerts = Get-RmmResolvedAlerts
    #>

    return New-RmmApiRequest -method GET -endpoint 'account/alerts/resolved'
}