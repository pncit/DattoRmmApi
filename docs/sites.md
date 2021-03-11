# Functions:
- [Get-RmmSite](#Get-RmmSite)

 - [Get-RmmSiteDevices](#Get-RmmSiteDevices)

 - [Get-RmmSiteOpenAlerts](#Get-RmmSiteOpenAlerts)

 - [Get-RmmSiteResolvedAlerts](#Get-RmmSiteResolvedAlerts)

 - [Get-RmmSiteSettings](#Get-RmmSiteSettings)

 - [Get-RmmSiteVariables](#Get-RmmSiteVariables)

 - [New-RmmSite](#New-RmmSite)

 - [New-RmmSiteVariable](#New-RmmSiteVariable)

 - [Remove-RmmSiteProxy](#Remove-RmmSiteProxy)

 - [Remove-RmmSiteVariable](#Remove-RmmSiteVariable)

 - [Set-RmmSite](#Set-RmmSite)

 - [Set-RmmSiteProxy](#Set-RmmSiteProxy)

 - [Set-RmmSiteVariable](#Set-RmmSiteVariable)



&nbsp;
&nbsp;
&nbsp;
# Get-RmmSite

## SYNOPSIS
Gets data for the given site

## SYNTAX

```
Get-RmmSite [-siteUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches data of the site (including total number of devices) identified by the given site Uid.

## EXAMPLES

### EXAMPLE 1
```
$site = Get-RmmSite -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -siteUid
Uid of the site

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

### [System.Object] PSCustomObject containing site data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmSiteDevices

## SYNOPSIS
Gets all devices in an site

## SYNTAX

```
Get-RmmSiteDevices [-siteUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches the devices records of the site identified by the given site Uid

## EXAMPLES

### EXAMPLE 1
```
$devices = Get-RmmSiteDevices -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -siteUid
Uid of the site

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

### [System.Array] Object containing device data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmSiteOpenAlerts

## SYNOPSIS
Get open alerts for a given site

## SYNTAX

```
Get-RmmSiteOpenAlerts [-siteUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches the open alerts of the site identified by the given site Uid

## EXAMPLES

### EXAMPLE 1
```
$site = Get-RmmSiteOpenAlerts -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -siteUid
Uid of the site

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

### [System.Array] Object containing alert data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmSiteResolvedAlerts

## SYNOPSIS
Get resolved alerts for a given site

## SYNTAX

```
Get-RmmSiteResolvedAlerts [-siteUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches the resolved alerts of the site identified by the given site Uid

## EXAMPLES

### EXAMPLE 1
```
$site = Get-RmmSiteResolvedAlerts -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -siteUid
Uid of the site

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

### [System.Array] Object containing alert data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmSiteSettings

## SYNOPSIS
Gets all devices in an site

## SYNTAX

```
Get-RmmSiteSettings [-siteUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches the settings of the site identified by the given site Uid

## EXAMPLES

### EXAMPLE 1
```
$siteSettings = Get-RmmSiteSettings -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -siteUid
Uid of the site

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

### [System.Object] PSCustomObject containing settings data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmSiteVariables

## SYNOPSIS
Gets all variables for a site

## SYNTAX

```
Get-RmmSiteVariables [-siteUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches the variables of the site identified by the given site Uid

## EXAMPLES

### EXAMPLE 1
```
$variables = Get-RmmSiteVariables -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -siteUid
Uid of the site

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

### [System.Array] Object containing variable data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# New-RmmSite

## SYNOPSIS
Creates a new site

## SYNTAX

```
New-RmmSite [[-description] <String>] [-name] <String> [[-notes] <String>] [-onDemand] [[-proxyHost] <String>]
 [[-proxyPassword] <String>] [[-proxyPort] <String>] [[-proxyType] <String>] [[-proxyUsername] <String>]
 [-splashtopAutoInstall] [<CommonParameters>]
```

## DESCRIPTION
Creates a new site in the authenticated user's account

## EXAMPLES

### EXAMPLE 1
```
$newSite = New-RmmSite -name "foo" -onDemand
```

## PARAMETERS

### -description
Site description

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -name
Site name

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

### -notes
Site notes

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -onDemand
Switch to set whether or not site is 'on demand'

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

### -proxyHost
Proxy Host

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -proxyPassword
Proxy password

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -proxyPort
Proxy port

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -proxyType
Proxy type (http, socks4, socks5)

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -proxyUsername
Proxy user name

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -splashtopAutoInstall
Switch to set whether or not to autoinstall splashtop

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
# New-RmmSiteVariable

## SYNOPSIS
Creates an site-level variable

## SYNTAX

```
New-RmmSiteVariable [-siteUid] <String> [-name] <String> [-value] <String> [-masked] [<CommonParameters>]
```

## DESCRIPTION
Creates a site variable in the site identified by the given site Uid

## EXAMPLES

### EXAMPLE 1
```
New-RmmSiteVariable -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -name "foo" -value "bar"
```

New-RmmSiteVariable -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -name "foo" -value "bar" -masked

## PARAMETERS

### -siteUid
Uid of the site to add a variable to

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
The name of the variable

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
The value of the variable

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
# Remove-RmmSiteProxy

## SYNOPSIS
Deletes a site's proxy settings

## SYNTAX

```
Remove-RmmSiteProxy [-siteUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Deletes site proxy settings for the site identified by the given site Uid

## EXAMPLES

### EXAMPLE 1
```
Remove-RmmSiteProxy -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -siteUid
Uid of the site to modify

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
# Remove-RmmSiteVariable

## SYNOPSIS
Removes a site-level variable

## SYNTAX

```
Remove-RmmSiteVariable [-siteUid] <String> [-variableId] <String> [<CommonParameters>]
```

## DESCRIPTION
Removes the site variable identified by the given site Uid and variable Id

## EXAMPLES

### EXAMPLE 1
```
Remove-RmmSiteVariable -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -variableId 01234
```

## PARAMETERS

### -siteUid
Uid of the site to remove the variable from

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

### -variableId
Id of the variable to remove

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Set-RmmSite

## SYNOPSIS
Modifies a site

## SYNTAX

```
Set-RmmSite [-siteUid] <String> [[-description] <String>] [-name] <String> [[-notes] <String>] [-onDemand]
 [-splashtopAutoInstall] [<CommonParameters>]
```

## DESCRIPTION
Updates the site identified by the given site Uid

## EXAMPLES

### EXAMPLE 1
```
$newSite = Set-RmmSite -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -name "foo" -onDemand
```

## PARAMETERS

### -siteUid
Uid of the site to modify

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

### -description
Site description

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -name
Site name

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

### -notes
Site notes

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -onDemand
Switch to set whether or not site is 'on demand'

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

### -splashtopAutoInstall
Switch to set whether or not to autoinstall splashtop

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
# Set-RmmSiteProxy

## SYNOPSIS
Modifies a site proxy settings

## SYNTAX

```
Set-RmmSiteProxy [-siteUid] <String> [[-proxyHost] <String>] [[-proxyPassword] <String>]
 [[-proxyPort] <String>] [[-proxyType] <String>] [[-proxyUsername] <String>] [<CommonParameters>]
```

## DESCRIPTION
Creates/updates the proxy settings for the site identified by the given site Uid

## EXAMPLES

### EXAMPLE 1
```
$response = Set-RmmSiteProxy -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -proxyHost "http::/host.com" -proxyType "http"
```

## PARAMETERS

### -siteUid
Uid of the site to modify

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

### -proxyHost
Proxy Host

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -proxyPassword
Proxy password

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -proxyPort
Proxy port

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -proxyType
Proxy type (http, socks4, socks5)

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -proxyUsername
Proxy user name

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
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
# Set-RmmSiteVariable

## SYNOPSIS
Modifies a site-level variable

## SYNTAX

```
Set-RmmSiteVariable [-siteUid] <String> [-variableId] <String> [-name] <String> [-value] <String>
 [<CommonParameters>]
```

## DESCRIPTION
Updates the site variable identified by the given site Uid and variable Id

## EXAMPLES

### EXAMPLE 1
```
Set-RmmSiteVariable -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -variableId 01234 -name "foo" -value "bar"
```

## PARAMETERS

### -siteUid
Uid of the site with the variable to modify

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

### -variableId
Id of the variable to modify

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

### -name
The name to apply to the variable

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

### -value
The value to apply to the variable

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
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
