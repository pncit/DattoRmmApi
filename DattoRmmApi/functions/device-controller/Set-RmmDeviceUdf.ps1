function Set-RmmDeviceUdf {
    <#
    .SYNOPSIS 
    Defines one or more UDFs

    .DESCRIPTION
    Sets the user defined fields of a device identified by the given device Uid.
    Any user defined field supplied with an empty value will be set to null. All user defined fields not supplied will retain their current values. 

    .PARAMETER deviceUid
    Uid of the device

    .PARAMETER udf1-udf30
    Udfs to define.

    .EXAMPLE
    Set-RmmDeviceUdf -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -udf10 "foo" -udf15 "bar" -udf25 ""
    #>

    param 
    (
        [parameter(Mandatory=$true)]
        [string]$deviceUid,
        [parameter(Mandatory=$false)]
        [string]$udf1,
        [parameter(Mandatory=$false)]
        [string]$udf2,
        [parameter(Mandatory=$false)]
        [string]$udf3,
        [parameter(Mandatory=$false)]
        [string]$udf4,
        [parameter(Mandatory=$false)]
        [string]$udf5,
        [parameter(Mandatory=$false)]
        [string]$udf6,
        [parameter(Mandatory=$false)]
        [string]$udf7,
        [parameter(Mandatory=$false)]
        [string]$udf8,
        [parameter(Mandatory=$false)]
        [string]$udf9,
        [parameter(Mandatory=$false)]
        [string]$udf10,
        [parameter(Mandatory=$false)]
        [string]$udf11,
        [parameter(Mandatory=$false)]
        [string]$udf12,
        [parameter(Mandatory=$false)]
        [string]$udf13,
        [parameter(Mandatory=$false)]
        [string]$udf14,
        [parameter(Mandatory=$false)]
        [string]$udf15,
        [parameter(Mandatory=$false)]
        [string]$udf16,
        [parameter(Mandatory=$false)]
        [string]$udf17,
        [parameter(Mandatory=$false)]
        [string]$udf18,
        [parameter(Mandatory=$false)]
        [string]$udf19,
        [parameter(Mandatory=$false)]
        [string]$udf20,
        [parameter(Mandatory=$false)]
        [string]$udf21,
        [parameter(Mandatory=$false)]
        [string]$udf22,
        [parameter(Mandatory=$false)]
        [string]$udf23,
        [parameter(Mandatory=$false)]
        [string]$udf24,
        [parameter(Mandatory=$false)]
        [string]$udf25,
        [parameter(Mandatory=$false)]
        [string]$udf26,
        [parameter(Mandatory=$false)]
        [string]$udf27,
        [parameter(Mandatory=$false)]
        [string]$udf28,
        [parameter(Mandatory=$false)]
        [string]$udf29,
        [parameter(Mandatory=$false)]
        [string]$udf30
    )

    $requestBody = @{}
    $requestBody.Add('deviceUid',$deviceUid)

    foreach ( $parameter in $PSBoundParameters.keys ) {
        if ( $parameter -like "udf*" ) {
            $requestBody.Add( $parameter, $PSBoundParameters.item($parameter) )  
        }
    }

    New-RmmApiRequest -method POST -endpoint "device/$deviceUid/udf" -requestBody ( $requestBody | ConvertTo-Json )
}