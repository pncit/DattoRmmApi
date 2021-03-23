function New-RmmDeviceQuickJob {
    <#
    .SYNOPSIS 
    Runs a quick job on a device

    .DESCRIPTION
    Creates a quick job on the device identified by the given device Uid

    .OUTPUTS
    [System.Object] custom object containing job data

    .EXAMPLE
    $response = New-DeviceQuickJob -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -jobName "foo" -componentUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -variables @{"bar"="baz";"qux"="quux"}
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

    #convert variable data from hashtable to array that can be converted to API-compatible JSON object
    $variablesArray = @()
    foreach ( $Key in $variables.Keys ) {
        $temp = @{
            "name" = $Key
            "value" = $variables[$Key]
        }
        $variablesArray += $temp
    }

    #build request body
    $requestBody = @{}
    $jobComponent = @{}
    $requestBody.Add( 'jobName' , $jobName )
    $jobComponent.Add( 'componentUid' , $componentUid )
    $jobComponent.Add( 'variables' , $variablesArray )
    $requestBody.Add( 'jobComponent' , $jobComponent )

    #ConvertTo-Json must be run with Depth 3 because of variables is itself an array that needs converting
    return New-RmmApiRequest -method PUT -endpoint "device/$deviceUid/quickjob" -requestBody ( $requestBody | ConvertTo-Json -Depth 3 )
}