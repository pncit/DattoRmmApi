function Set-RmmDeviceWarranty {
    <#
    .SYNOPSIS 
    Sets the warranty for a device

    .DESCRIPTION
    Sets the warranty of a device identified by the given device Uid

    .PARAMETER deviceUid
    Uid of the device

    .PARAMETER warrantyDate
    Warranty date as string

    .EXAMPLE
    Set-RmmDeviceWarranty -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -warrantyDate '2021/01/23'
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$deviceUid,
        [parameter(Mandatory=$true)]
        [string]$warrantyDate
    )

    $requestBody = @{}
    $requestBody.Add('deviceUid',$deviceUid)
    $requestBody.Add('warrantyDate',$warrantyDate)

    New-RmmApiRequest -method POST -endpoint "device/$deviceUid/warranty" -requestBody ( $requestBody | ConvertTo-Json )
}