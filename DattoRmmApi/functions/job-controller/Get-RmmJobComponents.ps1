function Get-RmmJobComponents {
    <#
    .SYNOPSIS 
    Get components for a given job

    .DESCRIPTION
    Fetches components of the job identified by the given job Uid.

    .PARAMETER jobUid
    Uid of the job

    .OUTPUTS
    [System.Object] custom object containing request response data

    .EXAMPLE
    $job = Get-RmmJobComponents -jobUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$jobUid
    )

    return New-RmmApiRequest -method GET -endpoint "job/$jobUid/components"
}