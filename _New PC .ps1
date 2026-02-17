# https://www.digitalcitizen.life/how-remove-default-windows-10-apps-powershell-3-steps/
# Get-AppxPackage | findstr FullName

#Reinstall all default packages from AppXmanifest (all packages from default user)
#Get-AppxPackage -Allusers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

#Reinstall package from AppXmanifest
#Get-AppxPackage -AllUsers *WindowsStore* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

#Get-AppxPackage *camera* | Remove-AppxPackage
#Get-AppxPackage *gethelp* | Remove-AppxPackage
#Get-AppxPackage *media* | Remove-AppxPackage
#Get-AppxPackage *mspaint* | Remove-AppxPackage
#Get-AppxPackage *notes* | Remove-AppxPackage
#Get-AppxPackage *photos* | Remove-AppxPackage
#Get-AppxPackage *QuickAssist* | Remove-AppxPackage
#Get-AppxPackage *screensketch* | Remove-AppxPackage

Get-AppxPackage *3dbuilder* | Remove-AppxPackage -Allusers
Get-AppxPackage *3dviewer* | Remove-AppxPackage -Allusers
Get-AppxPackage *alarms* | Remove-AppxPackage -Allusers
Get-AppxPackage *bingfinance* | Remove-AppxPackage -Allusers
Get-AppxPackage *bingnews* | Remove-AppxPackage -Allusers
Get-AppxPackage *bingsearch* | Remove-AppxPackage -Allusers
Get-AppxPackage *bingsports* | Remove-AppxPackage -Allusers
Get-AppxPackage *bingweather* | Remove-AppxPackage -Allusers
Get-AppxPackage *clipchamp* | Remove-AppxPackage -Allusers
Get-AppxPackage *communications* | Remove-AppxPackage -Allusers
Get-AppxPackage *copilot* | Remove-AppxPackage -Allusers
Get-AppxPackage *devhome* | Remove-AppxPackage -Allusers
Get-AppxPackage *family* | Remove-AppxPackage -Allusers
Get-AppxPackage *feedback* | Remove-AppxPackage -Allusers
Get-AppxPackage *gamingapp* | Remove-AppxPackage -Allusers
Get-AppxPackage *getstarted* | Remove-AppxPackage -Allusers
Get-AppxPackage *maps* | Remove-AppxPackage -Allusers
Get-AppxPackage *mixedreality* | Remove-AppxPackage -Allusers
Get-AppxPackage *msteams* | Remove-AppxPackage -Allusers
Get-AppxPackage *officehub* | Remove-AppxPackage -Allusers
Get-AppxPackage *onedrive* | Remove-AppxPackage -Allusers
Get-AppxPackage *onenote* | Remove-AppxPackage -Allusers
Get-AppxPackage *outlook* | Remove-AppxPackage -Allusers
Get-AppxPackage *people* | Remove-AppxPackage -Allusers
Get-AppxPackage *phone* | Remove-AppxPackage -Allusers
Get-AppxPackage *skypeapp* | Remove-AppxPackage -Allusers
Get-AppxPackage *solitairecollection* | Remove-AppxPackage -Allusers
Get-AppxPackage *soundrecorder* | Remove-AppxPackage -Allusers
Get-AppxPackage *StartExperiences* | Remove-AppxPackage -Allusers
Get-AppxPackage *storepurchase* | Remove-AppxPackage -Allusers
Get-AppxPackage *todo* | Remove-AppxPackage -Allusers
Get-AppxPackage *wallet* | Remove-AppxPackage -Allusers
Get-AppxPackage *xbox* | Remove-AppxPackage -Allusers
Get-AppxPackage *zunemusic* | Remove-AppxPackage -Allusers
Get-AppxPackage *zunevideo* | Remove-AppxPackage -Allusers

Get-AppxProvisionedPackage -Online | ? DisplayName -like '*3dbuilder*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*3dviewer*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*bingfinance*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*bingnews*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*bingsearch*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*bingsports*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*bingweather*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*clipchamp*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*communications*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*copilot*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*devhome*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*family*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*gamingapp*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*getstarted*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*maps*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*mixedreality*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*msteams*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*officehub*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*onedrive*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*onenote*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*outlook*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*people*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*skypeapp*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*todo*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*wallet*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*zunemusic*' | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | ? DisplayName -like '*zunevideo*' | Remove-AppxProvisionedPackage -Online

winget uninstall OneDriveSetup.exe
Disable-WindowsOptionalFeature -Online -FeatureName "Recall"

# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco feature enable -n allowGlobalConfirmation
choco install 7zip -y
choco install notepadplusplus -y
choco install chrome -y
choco install firefoxesr -y

#choco install vcredist-all -y
#choco install eartrumpet -y
#choco install hwinfo -y

# Chris Titus Ultimate Windows Utility
iwr -useb https://christitus.com/win | iex

