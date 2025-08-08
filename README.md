Sources:

https://github.com/valinet/ExplorerPatcher/releases

https://github.com/massgravel/Microsoft-Activation-Scripts/archive/refs/heads/master.zip

Shift + F10
OOBE\BYPASSNRO
The bypassnro.cmd is a script which contains:
@echo off
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v BypassNRO /t REG_DWORD /d 1 /f
shutdown /r /t 0

Shift + F10
start ms-cxh:localonly

Shift + F10 
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\OOBE /v HideOnlineAccountScreens /t REG_DWORD /d 1 /f

