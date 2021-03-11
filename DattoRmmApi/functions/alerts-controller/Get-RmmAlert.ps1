function Get-RmmAlert {
    <#
    .SYNOPSIS 
    Gets information for a given alert
    
    .DESCRIPTION
    Fetches an RMM alert

    .PARAMETER alertUid
    Uid of the alert to query

    .OUTPUTS
    [System.Object] PSCustomObject containing alert data

    .EXAMPLE
    $alertInfo = Get-RmmAlert -alertUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$alertUid
    )

    return New-RmmApiRequest -method GET -endpoint "alert/$alertUid"
}