# https://www.digitalcitizen.life/how-remove-default-windows-10-apps-powershell-3-steps/
# Get-AppxPackage | findstr FullName

#Reinstall all default packages from AppXmanifest (all packages from default user)
#Get-AppxPackage -Allusers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

#Reinstall package from AppXmanifest
#Get-AppxPackage -AllUsers *WindowsStore* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

#Get-AppxPackage *camera* | Remove-AppxPackage
#Get-AppxPackage *media* | Remove-AppxPackage
#Get-AppxPackage *mspaint* | Remove-AppxPackage
#Get-AppxPackage *notes* | Remove-AppxPackage
#Get-AppxPackage *photos* | Remove-AppxPackage
#Get-AppxPackage *screensketch* | Remove-AppxPackage

Get-AppxPackage *3dbuilder* | Remove-AppxPackage
Get-AppxPackage *3dviewer* | Remove-AppxPackage
Get-AppxPackage *alarms* | Remove-AppxPackage
Get-AppxPackage *bingfinance* | Remove-AppxPackage
Get-AppxPackage *bingnews* | Remove-AppxPackage
Get-AppxPackage *bingsearch* | Remove-AppxPackage
Get-AppxPackage *bingsports* | Remove-AppxPackage
Get-AppxPackage *bingweather* | Remove-AppxPackage
Get-AppxPackage *clipchamp* | Remove-AppxPackage
Get-AppxPackage *communications* | Remove-AppxPackage
Get-AppxPackage *copilot* | Remove-AppxPackage
Get-AppxPackage *devhome* | Remove-AppxPackage
Get-AppxPackage *family* | Remove-AppxPackage
Get-AppxPackage *feedback* | Remove-AppxPackage
Get-AppxPackage *gamingapp* | Remove-AppxPackage
Get-AppxPackage *gethelp* | Remove-AppxPackage
Get-AppxPackage *getstarted* | Remove-AppxPackage
Get-AppxPackage *heif* | Remove-AppxPackage
Get-AppxPackage *maps* | Remove-AppxPackage
Get-AppxPackage *mixedreality* | Remove-AppxPackage
Get-AppxPackage *msteams* | Remove-AppxPackage
Get-AppxPackage *officehub* | Remove-AppxPackage
Get-AppxPackage *onedrive* | Remove-AppxPackage
Get-AppxPackage *onenote* | Remove-AppxPackage
Get-AppxPackage *outlook* | Remove-AppxPackage
Get-AppxPackage *people* | Remove-AppxPackage
Get-AppxPackage *phone* | Remove-AppxPackage
Get-AppxPackage *QuickAssist* | Remove-AppxPackage
Get-AppxPackage *skypeapp* | Remove-AppxPackage
Get-AppxPackage *solitairecollection* | Remove-AppxPackage
Get-AppxPackage *soundrecorder* | Remove-AppxPackage
Get-AppxPackage *storepurchase* | Remove-AppxPackage
Get-AppxPackage *todo* | Remove-AppxPackage
Get-AppxPackage *vp9* | Remove-AppxPackage
Get-AppxPackage *wallet* | Remove-AppxPackage
Get-AppxPackage *webpimage* | Remove-AppxPackage
Get-AppxPackage *xbox* | Remove-AppxPackage
Get-AppxPackage *zunemusic* | Remove-AppxPackage
Get-AppxPackage *zunevideo* | Remove-AppxPackage

# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco feature enable -n allowGlobalConfirmation
choco install 7zip -y
choco install notepadplusplus -y
choco install vcredist-all -y
choco install dotnet-6.0-runtime -y

#choco install eartrumpet -y
#choco install hwinfo -y