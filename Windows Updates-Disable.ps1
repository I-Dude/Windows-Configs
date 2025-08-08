<#

.SYNOPSIS

Disable-AutomaticWindowsUpdates

.DESCRIPTION

This script will disable the Windows Update service and the Update Orchestrator Service, as well as disabling all scheduled tasks in the Update Orchestrator or Windows Updates folders. It creates a registry entry to prevent automatic updates.

.NOTES

C:\Windows\System32\Tasks\Microsoft\Windows

Version 1.1 7/31/2020

#>



Get-ScheduledTask -TaskPath "\Microsoft\Windows\UpdateOrchestrator\" | Disable-ScheduledTask

Get-ScheduledTask -TaskPath "\Microsoft\Windows\WindowsUpdate\" | Disable-ScheduledTask

Get-ScheduledTask -TaskPath "\Microsoft\Windows\WaasMedic\" | Disable-ScheduledTask

Set-Service wuauserv -StartupType Disabled -PassThru | Stop-Service

Set-Service UsoSvc -StartupType Disabled -PassThru | Stop-Service

# Set-Service WaaSMedicSvc -StartupType Disabled -PassThru | Stop-Service #does not work; permissions issue

Set-ItemProperty -Path "HKLM:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name NoAutoUpdate -Value 1

Set-ItemProperty -Path "HKLM:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name AUOptions -Value 2

Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc\" -Name Start -Value 4