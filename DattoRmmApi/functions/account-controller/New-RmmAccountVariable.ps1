function New-RmmAccountVariable {
    <#
    .SYNOPSIS 
    Creates an account-level variable

    .DESCRIPTION
    Creates an account-level variable with the given name, value, and optionally masked
    
	.PARAMETER name
	The name of the variable

    .PARAMETER value
    The value of the variable

    .PARAMETER masked
    Flag to mask the variable value
    
    .EXAMPLE
    New-RmmAccountVariable -name "foo" -value "bar"
    New-RmmAccountVariable -name "foo" -value "bar" -masked
    #>

    Param (
        [Parameter(Mandatory=$true)] 
        [string]$name,
        [Parameter(Mandatory=$true)] 
        [string]$value,
        [Parameter(Mandatory=$false)]
        [switch]$masked
    )

    $requestBody = @{}
    $requestBody.Add( 'name' , $name )
    $requestBody.Add( 'value' , $value )
    If ( $PSBoundParameters.ContainsKey( 'masked' ) ) {
        $requestBody.Add( 'masked' , $true )
    } else {
        $requestBody.Add( 'masked' , $false )
    }

    New-RmmApiRequest -method PUT -endpoint 'account/variable' -requestBody ( $requestBody | ConvertTo-Json )
}