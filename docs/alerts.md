# Functions:
- [Get-RmmAlert](#Get-RmmAlert)

 - [Set-RmmAlertResolved](#Set-RmmAlertResolved)



&nbsp;
&nbsp;
&nbsp;
# Get-RmmAlert

## SYNOPSIS
Gets information for a given alert

## SYNTAX

```
Get-RmmAlert [-alertUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches an RMM alert

## EXAMPLES

### EXAMPLE 1
```
$alertInfo = Get-RmmAlert -alertUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -alertUid
Uid of the alert to query

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

### [System.Object] custom object containing request response data
## NOTES

## RELATED LINKS

&nbsp;
&nbsp;
&nbsp;
# Set-RmmAlertResolved

## SYNOPSIS
Resolves a given alert

## SYNTAX

```
Set-RmmAlertResolved [-alertUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Resolves the alert identified by the given alert Uid

## EXAMPLES

### EXAMPLE 1
```
Set-RmmAlertResolved -alertUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -alertUid
Uid of the alert to resolve

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

### [System.Object] custom object containing request response data
## NOTES

## RELATED LINKS
