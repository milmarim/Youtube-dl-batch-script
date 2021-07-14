@echo off
title Youtube-dl Batch Installer

set /p usr=Type username used on this computer as seen in file manager:

if not exist "C:\Users\%usr%\Desktop\youtube-dl" mkdir C:\Users\%usr%\Desktop\youtube-dl
copy /-Y %~dp0\system.bat , C:\Users\%usr%\Desktop\youtube-dl
copy /-Y %~dp0\AtomicParsley.exe , C:\Users\%usr%\Desktop\youtube-dl
copy /-Y %~dp0\ffmpeg.exe , C:\Users\%usr%\Desktop\youtube-dl
copy /-Y %~dp0\ffplay.exe , C:\Users\%usr%\Desktop\youtube-dl
copy /-Y %~dp0\ffprobe.exe , C:\Users\%usr%\Desktop\youtube-dl
copy /-Y %~dp0\youtube_dl.bat , C:\Users\%usr%\Desktop\youtube-dl
copy /-Y %~dp0\youtube-dl.exe, C:\Users\%usr%\Desktop\youtube-dl
copy /-Y %~dp0\README - Info on installation!!.txt , C:\Users\%usr%\Desktop\youtube-dl
powershell -Command "(gc youtube_dl.bat) -replace 'Markus', '%usr%' | Out-File -encoding ASCII youtube_dl.bat"
powershell -Command "(gc system.bat) -replace 'Markus', '%usr%' | Out-File -encoding ASCII system.bat"
copy /-Y C:\Users\%usr%\Desktop\youtube-dl\system.bat , C:\Users\%usr%\Desktop


cd C:\Users\%usr%\Desktop
start system.bat

(goto) 2>nul & del "%~f0"
