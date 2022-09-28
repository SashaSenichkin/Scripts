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

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install firefox
choco install notepadplusplus
choco install 7zip
choco install coretemp
choco install telegram

choco install docker-desktop
choco install postman
choco install sourcetree
choco install dbeaver
choco install jetbrains-rider

choco install windirstat

