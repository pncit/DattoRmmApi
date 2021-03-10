function Set-RmmAlertResolved {
    <#
    .SYNOPSIS 
    Resolves a given alert
    
    .DESCRIPTION
    Resolves the alert identified by the given alert Uid

    .PARAMETER alertUid
    Uid of the alert to resolve

    .OUTPUTS
    [System.Object] custom object containing request response data

    .EXAMPLE
    Set-RmmAlertResolved -alertUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$alertUid
    )

    return New-RmmApiRequest -method POST -endpoint "alert/$alertUid/resolve"
}