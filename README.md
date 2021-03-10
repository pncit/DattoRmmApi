# About
The DattoRmmApi module was built to make the Datto RMM API readily accessible. These cmdlets let you hit every possible endpoint with every possible method without having to worry about scripting REST commands, handling paginations, detecting throttling, or anything else that might be standing between you and exploiting this great resource.

# Getting started

Make sure you have set up an API key for your user account in datto and know what your platform is (see [here](https://help.aem.autotask.net/en/Content/2SETUP/APIv2.htm) for instructions).

Install and import the powershell module from the powershell gallery with the commands 

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