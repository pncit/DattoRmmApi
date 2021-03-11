# Functions:
- [Get-RmmAccountData](#Get-RmmAccountData)

 - [Get-RmmAccountVariables](#Get-RmmAccountVariables)

 - [Get-RmmComponents](#Get-RmmComponents)

 - [Get-RmmDevices](#Get-RmmDevices)

 - [Get-RmmOpenAlerts](#Get-RmmOpenAlerts)

 - [Get-RmmResolvedAlerts](#Get-RmmResolvedAlerts)

 - [Get-RmmSites](#Get-RmmSites)

 - [Get-RmmUsers](#Get-RmmUsers)

 - [New-RmmAccountVariable](#New-RmmAccountVariable)

 - [Remove-RmmAccountVariable](#Remove-RmmAccountVariable)

 - [Set-RmmAccountVariable](#Set-RmmAccountVariable)



&nbsp;
&nbsp;
&nbsp;
# Get-RmmAccountData

## SYNOPSIS
Gets RMM account data

## SYNTAX

```
Get-RmmAccountData
```

## DESCRIPTION
Fetches the authenticated user's account data

## EXAMPLES

### EXAMPLE 1
```
$accountData = Get-RmmAccountData
```

## PARAMETERS

## INPUTS

## OUTPUTS

### [System.Object] PSCustomObject containing account data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmAccountVariables

## SYNOPSIS
Gets account-level variables

## SYNTAX

```
Get-RmmAccountVariables
```

## DESCRIPTION
Fetches the account variables

## EXAMPLES

### EXAMPLE 1
```
$accountVariables = Get-RmmAccountVariables
```

## PARAMETERS

## INPUTS

## OUTPUTS

### [System.Array] Object containing variable data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmComponents

## SYNOPSIS
Gets component information

## SYNTAX

```
Get-RmmComponents
```

## DESCRIPTION
Fetches the components records of the authenticated user's account

## EXAMPLES

### EXAMPLE 1
```
$components = Get-RmmComponents
```

## PARAMETERS

## INPUTS

## OUTPUTS

### [System.Array] Object containing component data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmDevices

## SYNOPSIS
Gets all devices in an account

## SYNTAX

```
Get-RmmDevices
```

## DESCRIPTION
Fetches the devices of the authenticated user's account

## EXAMPLES

### EXAMPLE 1
```
$devices = Get-RmmDevices
```

## PARAMETERS

## INPUTS

## OUTPUTS

### [System.Array] Object containing device data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmOpenAlerts

## SYNOPSIS
Gets all open alerts

## SYNTAX

```
Get-RmmOpenAlerts
```

## DESCRIPTION
Fetches open alerts of the authenticated user's account

## EXAMPLES

### EXAMPLE 1
```
$openAlerts = Get-RmmOpenAlerts
```

## PARAMETERS

## INPUTS

## OUTPUTS

### [System.Array] Object containing alert data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmResolvedAlerts

## SYNOPSIS
Gets all resolved alerts

## SYNTAX

```
Get-RmmResolvedAlerts
```

## DESCRIPTION
Fetches resolved alerts of the authenticated user's account

## EXAMPLES

### EXAMPLE 1
```
$resolvedAlerts = Get-RmmResolvedAlerts
```

## PARAMETERS

## INPUTS

## OUTPUTS

### [System.Array] Object containing alert data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmSites

## SYNOPSIS
Gets all sites

## SYNTAX

```
Get-RmmSites
```

## DESCRIPTION
Fetches the sites of the authenticated user's account

## EXAMPLES

### EXAMPLE 1
```
$sites = Get-RmmSites
```

## PARAMETERS

## INPUTS

## OUTPUTS

### [System.Array] Object containing site data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmUsers

## SYNOPSIS
Gets all users

## SYNTAX

```
Get-RmmUsers
```

## DESCRIPTION
Fetches the authentication users records of the authenticated user's account.

## EXAMPLES

### EXAMPLE 1
```
$users = Get-RmmUsers
```

## PARAMETERS

## INPUTS

## OUTPUTS

### [System.Array] Object containing user data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# New-RmmAccountVariable

## SYNOPSIS
Creates an account-level variable

## SYNTAX

```
New-RmmAccountVariable [-name] <String> [-value] <String> [-masked] [<CommonParameters>]
```

## DESCRIPTION
Creates an account-level variable with the given name, value, and optionally masked

## EXAMPLES

### EXAMPLE 1
```
New-RmmAccountVariable -name "foo" -value "bar"
```

New-RmmAccountVariable -name "foo" -value "bar" -masked

## PARAMETERS

### -name
The name of the variable

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -value
The value of the variable

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -masked
Flag to mask the variable value

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Remove-RmmAccountVariable

## SYNOPSIS
Deletes an account-level variable

## SYNTAX

```
Remove-RmmAccountVariable [-variableId] <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes the account variable identified by the given variable id

## EXAMPLES

### EXAMPLE 1
```
Remove-RmmAccountVariable -variableId 012345
```

## PARAMETERS

### -variableId
The id of the variable

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Set-RmmAccountVariable

## SYNOPSIS
Modifies an account-level variable

## SYNTAX

```
Set-RmmAccountVariable [-variableId] <String> [-name] <String> [-value] <String> [<CommonParameters>]
```

## DESCRIPTION
Updates the account variable identified by the given variable id

## EXAMPLES

### EXAMPLE 1
```
Set-RmmAccountVariable -variableId 012345 -name "foo" -value "bar"
```

## PARAMETERS

### -variableId
The id of the variable

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -name
{{ Fill name Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -value
{{ Fill value Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
