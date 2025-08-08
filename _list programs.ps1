rm .\prog.log
Get-AppxPackage –AllUsers | Select Name, PackageFullName | Out-File -FilePath .\prog.log  -Append
Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize | Out-File -FilePath .\prog.log -Append
cmd /r dir "%ProgramData%\Microsoft\Windows\Start Menu\programs" /s /b /a | Out-String -Stream | Select-String -Pattern "esktop.ini" -NotMatch | Out-File -FilePath .\prog.log  -Append
cmd /r dir "%AppData%\Microsoft\Windows\Start Menu\Programs" /s /b /a | Out-String -Stream | Select-String -Pattern "esktop.ini" -NotMatch |Out-File -FilePath .\prog.log  -Append
 