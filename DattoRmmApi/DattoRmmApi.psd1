#
# Module manifest for module 'DattoRmmApi'
#
# Generated by: rob.gilbreath
#
# Generated on: 3/9/2021
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'DattoRmmApi'

# Version number of this module.
ModuleVersion = '1.1.0'

# Supported PSEditions
# Supported PSEditions
CompatiblePSEditions = @(
    'Desktop'
    'Core'
)

# ID used to uniquely identify this module
GUID = 'ec59505a-cc09-487e-9e60-c4a8c1c72da2'

# Author of this module
Author = 'Rob Gilbreath - rob.gilbreath@pncit.com'

# Company or vendor of this module
CompanyName = 'PNC IT'

# Copyright statement for this module
Copyright = '(c) 2021 PNC IT. All rights reserved.'

# Description of the functionality provided by this module
Description = 'This module facilitates interaction with the Datto RMM REST API via PowerShell'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = '*'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('Datto','RMM','DattoRMM','AEM','CentraStage','Autotask')

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/pncit/DattoRmmApi/blob/main/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/pncit/DattoRmmApi'

        # A URL to an icon representing this module.
        IconUri = 'https://logo.clearbit.com/pncit.com'

        # ReleaseNotes of this module
        ReleaseNotes = 'https://github.com/pncit/DattoRmmApi/blob/main/README.md'

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

