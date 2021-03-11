# Functions:
- [Get-RmmDeviceAuditData](#Get-RmmDeviceAuditData)

 - [Get-RmmDeviceSoftwareAuditData](#Get-RmmDeviceSoftwareAuditData)

 - [Get-RmmEsxiHostAuditData](#Get-RmmEsxiHostAuditData)

 - [Get-RmmPrinterAuditData](#Get-RmmPrinterAuditData)



&nbsp;
&nbsp;
&nbsp;
# Get-RmmDeviceAuditData

## SYNOPSIS
Get audit data for a given device

## SYNTAX

```
Get-RmmDeviceAuditData [-deviceUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches audit data of the generic device identified by the given device Uid.

## EXAMPLES

### EXAMPLE 1
```
$deviceAuditData = Get-RmmDeviceAuditData -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
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
# Get-RmmDeviceSoftwareAuditData

## SYNOPSIS
Get software audit data for a given device

## SYNTAX

```
Get-RmmDeviceSoftwareAuditData [-deviceUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches audited software of the generic device identified by the given device Uid

## EXAMPLES

### EXAMPLE 1
```
$software = Get-RmmDeviceSoftwareAuditData -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
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

### [System.Object] PSCustomObject containing software audit data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmEsxiHostAuditData

## SYNOPSIS
Get audit data for a given ESXi host

## SYNTAX

```
Get-RmmEsxiHostAuditData [-deviceUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches audit data of the ESXi host identified by the given device Uid.

## EXAMPLES

### EXAMPLE 1
```
$data = Get-RmmEsxiHostAuditData -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
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

### [System.Object] PSCustomObject containing device audit data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Get-RmmPrinterAuditData

## SYNOPSIS
Get audit data for a given printer

## SYNTAX

```
Get-RmmPrinterAuditData [-deviceUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches audit data of the printer identified by the given device Uid.

## EXAMPLES

### EXAMPLE 1
```
$data = Get-RmmPrinterAuditData -deviceUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
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

### [System.Object] PSCustomObject containing printer audit data
## NOTES

## RELATED LINKS
