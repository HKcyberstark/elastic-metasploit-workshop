$SrcUri = "https://raw.githubusercontent.com/HKcyberstark/elastic-metasploit-workshop/master/"
$WinUri = "https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.13.2-windows-x86_64.zip"
$NoteplusUri = "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.1/npp.8.1.Installer.x64.exe"
$apt = "https://raw.githubusercontent.com/HKcyberstark/elastic-metasploit-workshop/master/apt34.ps1"
$HomeDir = "C:\Users\Administrator\Elastic"
$Command = "Set-MpPreference -DisableRealtimeMonitoring $true"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Set-MpPreference -DisableRealtimeMonitoring $true

Invoke-WebRequest -Uri "$NoteplusUri" -OutFile "$HomeDir\notepadplus.exe"
Invoke-WebRequest -Uri "$WinUri" -OutFile "$HomeDir\winlogbeat.zip"
Expand-Archive -Path $HomeDir\winlogbeat.zip -DestinationPath $HomeDir\winlogbeat
Invoke-WebRequest -Uri "$SrcUri/sysmon-install.ps1" -OutFile "$HomeDir\sysmon-install.ps1"
Invoke-WebRequest -Uri "$SrcUri/apt34.ps1" -OutFile "$HomeDir\apt34.ps1"
