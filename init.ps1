Get-appxpackage -allusers *Microsoft.549981C3F5F10* | Remove-AppxPackage
Get-appxpackage -allusers *Bing* | Remove-AppxPackage
Get-appxpackage -allusers *MixedReality* | Remove-AppxPackage
Get-appxpackage -allusers *People* | Remove-AppxPackage
Get-appxpackage -allusers *Wallet* | Remove-AppxPackage
Get-appxpackage -allusers *WindowsMaps* | Remove-AppxPackage
Get-appxpackage -allusers *WindowsFeedbackHub* | Remove-AppxPackage
Get-appxpackage -allusers *xbox* | Remove-AppxPackage
Get-appxpackage -allusers *store* | Remove-AppxPackage
Get-appxpackage -allusers *groove* | Remove-AppxPackage

Set-Executionpolicy -Scope CurrentUser -ExecutionPolicy Bypass

New-Item -Path "HKCU:\Software\Policies\Microsoft\Windows" -Name "Explorer" -force
New-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -PropertyType "DWord" -Value 1
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\PushNotifications" -Name "ToastEnabled" -PropertyType "DWord" -Value 0

choco install firefox -y
choco install notepadplusplus -y
choco install 7zip -y
choco install coretemp -y
choco install telegram -y
choco install git -y
choco install mpc-be -y
choco install paint.net -y
choco install processhacker -y
choco install lightshot.install -y
choco install foxitreader -y
choco install obs-studio -y

choco install postman -y
choco install sourcetree -y
choco install dbeaver -y
choco install jetbrains-rider -y
choco install nodejs -y

choco install putty  -y
choco install mtputty -y

choco install windirstat -y
choco install winmerge -y

choco install aimp -y
Add-Content "C:\Users\admin\AppData\Roaming\AIMP\AIMP.ini" "[Global Hotkeys]"
Add-Content "C:\Users\admin\AppData\Roaming\AIMP\AIMP.ini" "Suspend=0"
Add-Content "C:\Users\admin\AppData\Roaming\AIMP\AIMP.ini" "acPlayerPause=41041"
Add-Content "C:\Users\admin\AppData\Roaming\AIMP\AIMP.ini" "acPlayerVolumeUp=41025"
Add-Content "C:\Users\admin\AppData\Roaming\AIMP\AIMP.ini" "acPlayerVolumeDown=41050"
Add-Content "C:\Users\admin\AppData\Roaming\AIMP\AIMP.ini" "acPlayerNextTrack2=41047"

curl -o "C:\Program Files\AIMP\Plugins\youtubePlugin.zip" http://www.aimp.ru/?do=catalog.download"&"id=732


Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
Enable-WindowsOptionalFeature -Online -FeatureName Containers

choco install docker-desktop -y

Import-StartLayout -LayoutPath "layout.xml" -MountPath "C:\"

If  ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll" -ItemType RegistryKey -Force}
If  ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell" -ItemType RegistryKey -Force}
If  ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open" -ItemType RegistryKey -Force}
Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open" -Name "MuiVerb" -Type "String" -Value "@photoviewer.dll,-3043"
If  ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\command")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\command" -ItemType RegistryKey -Force}
Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\command" -Name "(Default)" -Type "ExpandString" -Value "%SystemRoot%\System32\rundll32.exe `"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll`", ImageView_Fullscreen %1"
If  ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\DropTarget")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\DropTarget" -ItemType RegistryKey -Force}
Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\DropTarget" -Name "Clsid" -Type "String" -Value "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
If  ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print" -ItemType RegistryKey -Force}
If  ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\command")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\command" -ItemType RegistryKey -Force}
Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\command" -Name "(Default)" -Type "ExpandString" -Value "%SystemRoot%\System32\rundll32.exe `"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll`", ImageView_Fullscreen %1"
If  ( -Not ( Test-Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\DropTarget")){New-Item -Path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\DropTarget" -ItemType RegistryKey -Force}
Set-ItemProperty -path "Registry::HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\DropTarget" -Name "Clsid" -Type "String" -Value "{60fd46de-f830-4894-a628-6fa81bc0190d}"

