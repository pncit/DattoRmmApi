function New-RmmDeviceQuickJob {
    <#
    .SYNOPSIS 
    Runs a quick job on a device

    .DESCRIPTION
    Creates a quick job on the device identified by the given device Uid

    .OUTPUTS
    [System.Object] custom object containing job data

    .EXAMPLE
    $response = New-DeviceQuickJob -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -jobName "foo" -componentUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -variables @{"bar"="baz","qux"="quux"}
    #>

    Param (
        [Parameter(Mandatory=$true)] 
        [string]$deviceUid,
        [Parameter(Mandatory=$true)] 
        [string]$jobName,
        [Parameter(Mandatory=$true)] 
        [string]$componentUid,
        [Parameter(Mandatory=$false)]
        [hashtable]$variables
    )

    $requestBody = @{}
    $jobComponent = @{}
    $requestBody.Add( 'jobName' , $jobName )
    $jobComponent.Add( 'componentUid' , $componentUid )
    $jobComponent.Add( 'variables' , $variables )
    $requestBody.Add( 'jobComponent' , $jobComponent )

    return New-RmmApiRequest -method PUT -endpoint "device/$deviceUid/quickjob" -requestBody ( $requestBody | ConvertTo-Json )
}