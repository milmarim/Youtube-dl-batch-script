@echo off
set /p usr=Type username used on this computer:

powershell -Command "(gc youtube_dl.bat) -replace 'Markus', '%usr%' | Out-File -encoding ASCII youtube_dl.bat"
powershell -Command "(gc system.bat) -replace 'Markus', '%usr%' | Out-File -encoding ASCII system.bat"
copy /-Y C:\Users\%usr%\Desktop\youtube-dl\system.bat , C:\Users\%usr%\Desktop


cd C:\Users\%usr%\Desktop
start system.bat

(goto) 2>nul & del "%~f0"
