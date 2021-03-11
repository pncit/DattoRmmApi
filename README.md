# About
The DattoRmmApi module was built to make the Datto RMM API readily accessible. These cmdlets let you hit every possible endpoint with every possible method without having to worry about scripting REST commands, handling paginations, detecting throttling, or anything else that might be standing between you and exploiting this great resource.

# Getting started

Make sure you have set up an API key for your user account in datto and know what your platform is (see [here](https://help.aem.autotask.net/en/Content/2SETUP/APIv2.htm) for instructions).

Install and import the [PowerShell module from the PowerShell gallery](https://www.powershellgallery.com/packages/DattoRmmApi/) with the commands 

```powershell
Install-Module DattoRmmApi
Import-Module DattoRmmApi
```

Now any time you want to use the API, first run the command
```powershell
Start-RmmApiSession -platform '<your platform>' -accessKey '<your access key>' -secretKey '<your secret key>'
```
which will look something like
```powershell
Start-RmmApiSession -platform zinfandel -accessKey 0123456789ABCDEFGHIJKLMNOPQRSTUV -secretKey ABCDEFGHIJKLMNOPQRSTUVWXYZ012345
```
And you are off!

You can test things out by running
```powershell
Get-RmmAccountData
```

# What is available
Check out [the REST API explorer](https://zinfandel-api.centrastage.net/api/swagger-ui.html) for the structure, and go to our [documentation](https://github.com/pncit/DattoRmmApi/blob/main/docs/) for usage details.
You can also use the Get-Help cmdlet in PowerShell to get details about any cmdlet:
```powershell
Get-Help Get-RmmAccountData
```

<details>
    <summary>Click to list all of the cmdlets</summary>

## Account

- [Get-RmmAccountData](https://github.com/pncit/DattoRmmApi/blob/main/docs/account.md#Get-RmmAccountData)
- [Get-RmmAccountVariables](https://github.com/pncit/DattoRmmApi/blob/main/docs/account.md#Get-RmmAccountVariables)
- [Get-RmmComponents](https://github.com/pncit/DattoRmmApi/blob/main/docs/account.md#Get-RmmComponents)
- [Get-RmmDevices](https://github.com/pncit/DattoRmmApi/blob/main/docs/account.md#Get-RmmDevices)
- [Get-RmmOpenAlerts](https://github.com/pncit/DattoRmmApi/blob/main/docs/account.md#Get-RmmOpenAlerts)
- [Get-RmmResolvedAlerts](https://github.com/pncit/DattoRmmApi/blob/main/docs/account.md#Get-RmmResolvedAlerts)
- [Get-RmmSites](https://github.com/pncit/DattoRmmApi/blob/main/docs/account.md#Get-RmmSites)
- [Get-RmmUsers](https://github.com/pncit/DattoRmmApi/blob/main/docs/account.md#Get-RmmUsers)
- [New-RmmAccountVariable](https://github.com/pncit/DattoRmmApi/blob/main/docs/account.md#New-RmmAccountVariable)
- [Remove-RmmAccountVariable](https://github.com/pncit/DattoRmmApi/blob/main/docs/account.md#Remove-RmmAccountVariable)
- [Set-RmmAccountVariable](https://github.com/pncit/DattoRmmApi/blob/main/docs/account.md#Set-RmmAccountVariable)

## Alerts
- [Get-RmmAlert](https://github.com/pncit/DattoRmmApi/blob/main/docs/alerts.md#Get-RmmAlert)
- [Set-RmmAlertResolved](https://github.com/pncit/DattoRmmApi/blob/main/docs/alerts.md#Set-RmmAlertResolved)

## Audit
- [Get-RmmDeviceAuditData](https://github.com/pncit/DattoRmmApi/blob/main/docs/audit.md#Get-RmmDeviceAuditData)
- [Get-RmmDeviceSoftwareAuditData](https://github.com/pncit/DattoRmmApi/blob/main/docs/audit.md#Get-RmmDeviceSoftwareAuditData)
- [Get-RmmEsxiHostAuditData](https://github.com/pncit/DattoRmmApi/blob/main/docs/audit.md#Get-RmmEsxiHostAuditData)
- [Get-RmmPrinterAuditData](https://github.com/pncit/DattoRmmApi/blob/main/docs/audit.md#Get-RmmPrinterAuditData)

## Device
- [Get-RmmDevice](https://github.com/pncit/DattoRmmApi/blob/main/docs/device.md#Get-RmmDevice)
- [Get-RmmDeviceById](https://github.com/pncit/DattoRmmApi/blob/main/docs/device.md#Get-RmmDeviceById)
- [Get-RmmDeviceOpenAlerts](https://github.com/pncit/DattoRmmApi/blob/main/docs/device.md#Get-RmmDeviceOpenAlerts)
- [Get-RmmDeviceResolvedAlerts](https://github.com/pncit/DattoRmmApi/blob/main/docs/device.md#Get-RmmDeviceResolvedAlerts)
- [Move-RmmDevice](https://github.com/pncit/DattoRmmApi/blob/main/docs/device.md#Move-RmmDevice)
- [New-RmmDeviceQuickJob](https://github.com/pncit/DattoRmmApi/blob/main/docs/device.md#New-RmmDeviceQuickJob)
- [Set-RmmDeviceUdf](https://github.com/pncit/DattoRmmApi/blob/main/docs/device.md#Set-RmmDeviceUdf)
- [Set-RmmDeviceWarranty](https://github.com/pncit/DattoRmmApi/blob/main/docs/device.md#Set-RmmDeviceWarranty)

## Job
- [Get-RmmJob](https://github.com/pncit/DattoRmmApi/blob/main/docs/job.md#Get-RmmJob)
- [Get-RmmJobComponents](https://github.com/pncit/DattoRmmApi/blob/main/docs/job.md#Get-RmmJobComponents)

## Site
- [Get-RmmSite](https://github.com/pncit/DattoRmmApi/blob/main/docs/sites.md#Get-RmmSite)
- [Get-RmmSiteDevices](https://github.com/pncit/DattoRmmApi/blob/main/docs/sites.md#Get-RmmSiteDevices)
- [Get-RmmSiteOpenAlerts](https://github.com/pncit/DattoRmmApi/blob/main/docs/sites.md#Get-RmmSiteOpenAlerts)
- [Get-RmmSiteResolvedAlerts](https://github.com/pncit/DattoRmmApi/blob/main/docs/sites.md#Get-RmmSiteResolvedAlerts)
- [Get-RmmSiteSettings](https://github.com/pncit/DattoRmmApi/blob/main/docs/sites.md#Get-RmmSiteSettings)
- [Get-RmmSiteVariables](https://github.com/pncit/DattoRmmApi/blob/main/docs/sites.md#Get-RmmSiteVariables)
- [New-RmmSite](https://github.com/pncit/DattoRmmApi/blob/main/docs/sites.md#New-RmmSite)
- [New-RmmSiteVariable](https://github.com/pncit/DattoRmmApi/blob/main/docs/sites.md#Get-RmmSiteVariable)
- [Remove-RmmSiteProxy](https://github.com/pncit/DattoRmmApi/blob/main/docs/sites.md#Remove-RmmSiteProxy)
- [Remove-RmmSiteVariable](https://github.com/pncit/DattoRmmApi/blob/main/docs/sites.md#Remove-RmmSiteVariable)
- [Set-RmmSite](https://github.com/pncit/DattoRmmApi/blob/main/docs/sites.md#Set-RmmSite)
- [Set-RmmSiteProxy](https://github.com/pncit/DattoRmmApi/blob/main/docs/sites.md#Set-RmmSiteProxy)
- [Set-RmmSiteVariable](https://github.com/pncit/DattoRmmApi/blob/main/docs/sites.md#Set-RmmSiteVariable)

</details>

# Some ideas
- Store your platform, access key, and **masked** secret key as account variables so you can use the API from within Datto components.
- Monitors in Datto RMM cannot interact with UDFs in real-time - unless you use the API! To get a UDF for the device a component is running on:
```powershell
Start-RmmApiSession -platform $env:dattoRmmApiPlatform -accessKey $env:dattoRmmApiAccessKey -secretKey $env:dattoRmmApiSecretKey
Get-RmmDeviceUdf -deviceUid (Get-ItemProperty -Path 'HKLM:\SOFTWARE\CentraStage' -Name DeviceId).DeviceId -udf11
```
and to set it:
```powershell
Start-RmmApiSession -platform $env:dattoRmmApiPlatform -accessKey $env:dattoRmmApiAccessKey -secretKey $env:dattoRmmApiSecretKey
Set-RmmDeviceUdf -deviceUid (Get-ItemProperty -Path 'HKLM:\SOFTWARE\CentraStage' -Name DeviceId).DeviceId -udf11 "Hello World!"
```
- At one point I found that there were a lot of alerts from back when Datto let us mute them that had become very stale. They pre-dated our integration with Connectwise Manage, and the API made it easy to find and resolve them:
```powershell
$openAlerts = Get-RmmOpenAlerts
foreach ( $openAlert in $openAlerts ) {
    if ( $openAlert.ticketNumber -eq $null -and $openAlert.muted -eq 'True' ) {
        Set-DeviceOpenAlertResolved -alertUid $openAlert.alertUid
    }
}
```
- Our password management system has an API, and that lets us programmatically sync passwords from our manager to masked site variables in Datto - no more double hop issues!
