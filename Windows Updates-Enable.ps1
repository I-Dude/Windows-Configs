<#

.SYNOPSIS

Revert-AutomaticWindowsUpdates

.DESCRIPTION

This script will enable the Windows Update service and the Update Orchestrator Service, as well as enabling all default scheduled tasks in the Update Orchestrator or Windows Updates folders. It creates a registry entry to allows automatic updates.

.NOTES

Version 1.0 6/17/2020

#>




$defaultDisabled = "Maintenance Install","Reboot_AC","Reboot_Battery"

$taskList = Get-ScheduledTask -TaskPath "\Microsoft\Windows\UpdateOrchestrator\"

$taskList | ForEach-Object {

If(!($defaultDisabled -ccontains $PSItem.TaskName)){

Enable-ScheduledTask $PSItem

}

}



Get-ScheduledTask -TaskPath "\Microsoft\Windows\WindowsUpdate\" | Enable-ScheduledTask

Set-Service wuauserv -StartupType Manual -PassThru | Start-Service

Set-Service UsoSvc -StartupType Manual -PassThru | Start-Service

Set-ItemProperty -Path "HKLM:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name NoAutoUpdate -Value 0