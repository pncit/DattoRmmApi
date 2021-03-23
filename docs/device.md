# Functions:
- [Get-RmmDevice](#Get-RmmDevice)

 - [Get-RmmDeviceById](#Get-RmmDeviceById)

 - [Get-RmmDeviceOpenAlerts](#Get-RmmDeviceOpenAlerts)

 - [Get-RmmDeviceResolvedAlerts](#Get-RmmDeviceResolvedAlerts)

 - [Move-RmmDevice](#Move-RmmDevice)

 - [New-RmmDeviceQuickJob](#New-RmmDeviceQuickJob)

 - [Set-RmmDeviceUdf](#Set-RmmDeviceUdf)

 - [Set-RmmDeviceWarranty](#Set-RmmDeviceWarranty)



&nbsp;
&nbsp;
&nbsp;
# Get-RmmDevice

## SYNOPSIS
Get data for a given device

## SYNTAX

```
Get-RmmDevice [-deviceUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches data of the device identified by the given device Uid.

## EXAMPLES

### EXAMPLE 1
```
$device = Get-RmmDevice -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -deviceUid
Uid of the device

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

### [System.Object] PSCustomObject containing device data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmDeviceById

## SYNOPSIS
Get data for a given device

## SYNTAX

```
Get-RmmDeviceById [-deviceId] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches data of the device identified by the given device id.

## EXAMPLES

### EXAMPLE 1
```
$device = Get-RmmDevice -deviceId '012345'
```

## PARAMETERS

### -deviceId
Id of the device

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

### [System.Object] PSCustomObject containing device data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmDeviceOpenAlerts

## SYNOPSIS
Get open alerts for a given device

## SYNTAX

```
Get-RmmDeviceOpenAlerts [-deviceUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches the open alerts of the device identified by the given device Uid

## EXAMPLES

### EXAMPLE 1
```
$openAlerts = Get-RmmDeviceOpenAlerts -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -deviceUid
Uid of the device

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
# Get-RmmDeviceResolvedAlerts

## SYNOPSIS
Get resolved alerts for a given device

## SYNTAX

```
Get-RmmDeviceResolvedAlerts [-deviceUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches the resolved alerts of the device identified by the given device Uid

## EXAMPLES

### EXAMPLE 1
```
$resolvedAlerts = Get-RmmDeviceResolvedAlerts -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -deviceUid
Uid of the device

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
# Move-RmmDevice

## SYNOPSIS
Moves a device to a new site

## SYNTAX

```
Move-RmmDevice [-deviceUid] <String> [-siteUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Moves a device with the specified device uid to a site with the specified site uid

## EXAMPLES

### EXAMPLE 1
```
Move-RmmDevice -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -siteUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -deviceUid
Uid of the device

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

### -siteUid
Uid of the site to move the device to

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
# New-RmmDeviceQuickJob

## SYNOPSIS
Runs a quick job on a device

## SYNTAX

```
New-RmmDeviceQuickJob [-deviceUid] <String> [-jobName] <String> [-componentUid] <String>
 [[-variables] <Hashtable>] [<CommonParameters>]
```

## DESCRIPTION
Creates a quick job on the device identified by the given device Uid

## EXAMPLES

### EXAMPLE 1
```
$response = New-DeviceQuickJob -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -jobName "foo" -componentUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -variables @{"bar"="baz";"qux"="quux"}
```

## PARAMETERS

### -deviceUid
{{ Fill deviceUid Description }}

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

### -jobName
{{ Fill jobName Description }}

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

### -componentUid
{{ Fill componentUid Description }}

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

### -variables
{{ Fill variables Description }}

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### [System.Object] custom object containing job data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Set-RmmDeviceUdf

## SYNOPSIS
Defines one or more UDFs

## SYNTAX

```
Set-RmmDeviceUdf [-deviceUid] <String> [[-udf1] <String>] [[-udf2] <String>] [[-udf3] <String>]
 [[-udf4] <String>] [[-udf5] <String>] [[-udf6] <String>] [[-udf7] <String>] [[-udf8] <String>]
 [[-udf9] <String>] [[-udf10] <String>] [[-udf11] <String>] [[-udf12] <String>] [[-udf13] <String>]
 [[-udf14] <String>] [[-udf15] <String>] [[-udf16] <String>] [[-udf17] <String>] [[-udf18] <String>]
 [[-udf19] <String>] [[-udf20] <String>] [[-udf21] <String>] [[-udf22] <String>] [[-udf23] <String>]
 [[-udf24] <String>] [[-udf25] <String>] [[-udf26] <String>] [[-udf27] <String>] [[-udf28] <String>]
 [[-udf29] <String>] [[-udf30] <String>] [<CommonParameters>]
```

## DESCRIPTION
Sets the user defined fields of a device identified by the given device Uid.
Any user defined field supplied with an empty value will be set to null.
All user defined fields not supplied will retain their current values.

## EXAMPLES

### EXAMPLE 1
```
Set-RmmDeviceUdf -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -udf10 "foo" -udf15 "bar" -udf25 ""
```

## PARAMETERS

### -deviceUid
Uid of the device

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

### -udf1
{{ Fill udf1 Description }}

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

### -udf2
{{ Fill udf2 Description }}

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

### -udf3
{{ Fill udf3 Description }}

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

### -udf4
{{ Fill udf4 Description }}

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

### -udf5
{{ Fill udf5 Description }}

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

### -udf6
{{ Fill udf6 Description }}

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

### -udf7
{{ Fill udf7 Description }}

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

### -udf8
{{ Fill udf8 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf9
{{ Fill udf9 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf10
{{ Fill udf10 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf11
{{ Fill udf11 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf12
{{ Fill udf12 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf13
{{ Fill udf13 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf14
{{ Fill udf14 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf15
{{ Fill udf15 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf16
{{ Fill udf16 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf17
{{ Fill udf17 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 18
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf18
{{ Fill udf18 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 19
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf19
{{ Fill udf19 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 20
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf20
{{ Fill udf20 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 21
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf21
{{ Fill udf21 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 22
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf22
{{ Fill udf22 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 23
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf23
{{ Fill udf23 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 24
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf24
{{ Fill udf24 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 25
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf25
{{ Fill udf25 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 26
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf26
{{ Fill udf26 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 27
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf27
{{ Fill udf27 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 28
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf28
{{ Fill udf28 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 29
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf29
{{ Fill udf29 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 30
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -udf30
{{ Fill udf30 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 31
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
# Set-RmmDeviceWarranty

## SYNOPSIS
Sets the warranty for a device

## SYNTAX

```
Set-RmmDeviceWarranty [-deviceUid] <String> [-warrantyDate] <String> [<CommonParameters>]
```

## DESCRIPTION
Sets the warranty of a device identified by the given device Uid

## EXAMPLES

### EXAMPLE 1
```
Set-RmmDeviceWarranty -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62' -warrantyDate '2021-01-23'
```

## PARAMETERS

### -deviceUid
Uid of the device

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

### -warrantyDate
Warranty date as a string in yyyy-mm-dd format

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
