function Set-RmmAccountVariable {
    <#
    .SYNOPSIS 
    Modifies an account-level variable

    .DESCRIPTION
    Updates the account variable identified by the given variable id
    
	.PARAMETER variableId
	The id of the variable
    
    .EXAMPLE
    Set-RmmAccountVariable -variableId 012345 -name "foo" -value "bar"
    #>

    Param (
        [Parameter(Mandatory=$true)] 
        [string]$variableId,
        [Parameter(Mandatory=$true)] 
        [string]$name,
        [Parameter(Mandatory=$true)] 
        [string]$value
    )

    $requestBody = @{}
    $requestBody.Add('name',$name)
    $requestBody.Add('value',$value)

    New-RmmApiRequest -method POST -endpoint "account/variable/$variableId" -requestBody ( $requestBody | ConvertTo-Json )
}