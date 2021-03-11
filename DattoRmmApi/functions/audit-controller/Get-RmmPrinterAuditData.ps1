function Get-RmmPrinterAuditData {
    <#
    .SYNOPSIS 
    Get audit data for a given printer

    .DESCRIPTION
    Fetches audit data of the printer identified by the given device Uid.
    
    .PARAMETER deviceUid
    Uid of the device

    .OUTPUTS
    [System.Object] PSCustomObject containing printer audit data

    .EXAMPLE
    $data = Get-RmmPrinterAuditData -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$deviceUid
    )

    return New-RmmApiRequest -method GET -endpoint "audit/printer/$deviceUid"
}