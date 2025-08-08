#Moves the windows components in the Start Menu under the System Tools subfolder

# Self-elevate the script if required
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
 if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
  $CommandLine = "-File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
  Start-Process -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
  Exit
 }
}

#C:\ProgramData\Microsoft\Windows\Start Menu\Programs

$FOLDER='C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories'
cd $FOLDER
$folderName = pwd | Select-Object | %{$_.ProviderPath.Split("\")[-1]}
$FOLDER2 = 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\System Tools\'+$folderName
Copy-Item -Path $FOLDER -Destination $Folder2 -recurse -Force 
Get-ChildItem -path $FOLDER -Recurse -Force | foreach {$_.attributes = "Hidden"}
$FILE=Get-Item $FOLDER -Force
$FILE.attributes='Hidden'

$FOLDER='C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Administrative Tools'
cd $FOLDER
$folderName = pwd | Select-Object | %{$_.ProviderPath.Split("\")[-1]}
$FOLDER2 = 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\System Tools\'+$folderName
Copy-Item -Path $FOLDER -Destination $Folder2 -recurse -Force 
Get-ChildItem -path $FOLDER -Recurse -Force | foreach {$_.attributes = "Hidden"}
$FILE=Get-Item $FOLDER -Force
$FILE.attributes='Hidden'

$FOLDER='C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessibility'
cd $FOLDER
$folderName = pwd | Select-Object | %{$_.ProviderPath.Split("\")[-1]}
$FOLDER2 = 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\System Tools\'+$folderName
Copy-Item -Path $FOLDER -Destination $Folder2 -recurse -Force 
Get-ChildItem -path $FOLDER -Recurse -Force | foreach {$_.attributes = "Hidden"}
$FILE=Get-Item $FOLDER -Force
$FILE.attributes='Hidden'

$FOLDER='C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Windows PowerShell'
cd $FOLDER
$folderName = pwd | Select-Object | %{$_.ProviderPath.Split("\")[-1]}
$FOLDER2 = 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\System Tools\'+$folderName
Copy-Item -Path $FOLDER -Destination $Folder2 -recurse -Force 
Get-ChildItem -path $FOLDER -Recurse -Force | foreach {$_.attributes = "Hidden"}
$FILE=Get-Item $FOLDER -Force
$FILE.attributes='Hidden'


#%AppData%\Microsoft\Windows\Start Menu\Programs

$FOLDER=[Environment]::GetFolderPath('ApplicationData')+'\Microsoft\Windows\Start Menu\Programs\Accessories'
cd $FOLDER
$folderName = pwd | Select-Object | %{$_.ProviderPath.Split("\")[-1]}
$FOLDER2 = [Environment]::GetFolderPath('ApplicationData')+'\Microsoft\Windows\Start Menu\Programs\System Tools\'+$folderName
Copy-Item -Path $FOLDER -Destination $Folder2 -recurse -Force 
Get-ChildItem -path $FOLDER -Recurse -Force | foreach {$_.attributes = "Hidden"}
$FILE=Get-Item $FOLDER -Force
$FILE.attributes='Hidden'

$FOLDER=[Environment]::GetFolderPath('ApplicationData')+'\Microsoft\Windows\Start Menu\Programs\Administrative Tools'
cd $FOLDER
$folderName = pwd | Select-Object | %{$_.ProviderPath.Split("\")[-1]}
$FOLDER2 = [Environment]::GetFolderPath('ApplicationData')+'\Microsoft\Windows\Start Menu\Programs\System Tools\'+$folderName
Copy-Item -Path $FOLDER -Destination $Folder2 -recurse -Force 
Get-ChildItem -path $FOLDER -Recurse -Force | foreach {$_.attributes = "Hidden"}
$FILE=Get-Item $FOLDER -Force
$FILE.attributes='Hidden'

$FOLDER=[Environment]::GetFolderPath('ApplicationData')+'\Microsoft\Windows\Start Menu\Programs\Accessibility'
cd $FOLDER
$folderName = pwd | Select-Object | %{$_.ProviderPath.Split("\")[-1]}
$FOLDER2 = [Environment]::GetFolderPath('ApplicationData')+'\Microsoft\Windows\Start Menu\Programs\System Tools\'+$folderName
Copy-Item -Path $FOLDER -Destination $Folder2 -recurse -Force 
Get-ChildItem -path $FOLDER -Recurse -Force | foreach {$_.attributes = "Hidden"}
$FILE=Get-Item $FOLDER -Force
$FILE.attributes='Hidden'

$FOLDER=[Environment]::GetFolderPath('ApplicationData')+'\Microsoft\Windows\Start Menu\Programs\Windows PowerShell'
cd $FOLDER
$folderName = pwd | Select-Object | %{$_.ProviderPath.Split("\")[-1]}
$FOLDER2 = [Environment]::GetFolderPath('ApplicationData')+'\Microsoft\Windows\Start Menu\Programs\System Tools\'+$folderName
Copy-Item -Path $FOLDER -Destination $Folder2 -recurse -Force 
Get-ChildItem -path $FOLDER -Recurse -Force | foreach {$_.attributes = "Hidden"}
$FILE=Get-Item $FOLDER -Force
$FILE.attributes='Hidden'

echo "Press Enter to close"
pause