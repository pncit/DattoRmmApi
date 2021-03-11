function Remove-RmmAccountVariable {
    <#
    .SYNOPSIS 
    Deletes an account-level variable

    .DESCRIPTION
    Deletes the account variable identified by the given variable id
    
	.PARAMETER variableId
	The id of the variable
    
    .EXAMPLE
    Remove-RmmAccountVariable -variableId 012345
    #>

    Param (
        [Parameter(Mandatory=$true)] 
        [string]$variableId
    )

    New-RmmApiRequest -method DELETE -endpoint "account/variable/$variableId"
}