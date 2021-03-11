function Get-RmmJob {
    <#
    .SYNOPSIS 
    Get data for a given job

    .DESCRIPTION
    Fetches data of the job identified by the given job Uid.

    .PARAMETER jobUid
    Uid of the job

    .OUTPUTS
    [System.Object] PSCustomObject containing job data

    .EXAMPLE
    $job = Get-RmmJob -jobUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$jobUid
    )

    return New-RmmApiRequest -method GET -endpoint "job/$jobUid"
}