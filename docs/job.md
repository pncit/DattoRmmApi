# Functions:
- [Get-RmmJob](#Get-RmmJob)

 - [Get-RmmJobComponents](#Get-RmmJobComponents)



&nbsp;
&nbsp;
&nbsp;
# Get-RmmJob

## SYNOPSIS
Get data for a given job

## SYNTAX

```
Get-RmmJob [-jobUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches data of the job identified by the given job Uid.

## EXAMPLES

### EXAMPLE 1
```
$job = Get-RmmJob -jobUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -jobUid
Uid of the job

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
# Get-RmmJobComponents

## SYNOPSIS
Get components for a given job

## SYNTAX

```
Get-RmmJobComponents [-jobUid] <String> [<CommonParameters>]
```

## DESCRIPTION
Fetches components of the job identified by the given job Uid.

## EXAMPLES

### EXAMPLE 1
```
$job = Get-RmmJobComponents -jobUid '6bcc7737-61ed-4cd9-bf91-26be42401c62'
```

## PARAMETERS

### -jobUid
Uid of the job

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
