@echo off
title Youtube-dl Batch Installer
if exist "C:\Users\%USERNAME%\Documents\youtube-dl" del "C:\Users\%USERNAME%\Documents\youtube-dl" /q
if exist "C:\Users\%USERNAME%\Documents\youtube-dl" rmdir "C:\Users\%USERNAME%\Documents\youtube-dl" /q
if exist "C:\Users\%USERNAME%\Desktop\youtube_dl.bat" del "C:\Users\%USERNAME%\Desktop\youtube_dl.bat" /q
if not exist "C:\Users\%USERNAME%\Desktop\youtube-dl" mkdir C:\Users\%USERNAME%\Desktop\youtube-dl

cd "%~dp0"
powershell -Command "(gc youtube_dl.bat) -replace 'Markus', '%USERNAME%' | Out-File -encoding ASCII youtube_dl.bat"
powershell -Command "(gc system.bat) -replace 'Markus', '%USERNAME%' | Out-File -encoding ASCII system.bat"
copy /-Y %~dp0\system.bat , C:\Users\%USERNAME%\Desktop\youtube-dl
copy /-Y %~dp0\AtomicParsley.exe , C:\Users\%USERNAME%\Desktop\youtube-dl
copy /-Y %~dp0\Change_Download_Locations.bat, C:\Users\%USERNAME%\Desktop\youtube-dl
copy /-Y %~dp0\ffmpeg.exe , C:\Users\%USERNAME%\Desktop\youtube-dl
copy /-Y %~dp0\ffplay.exe , C:\Users\%USERNAME%\Desktop\youtube-dl
copy /-Y %~dp0\ffprobe.exe , C:\Users\%USERNAME%\Desktop\youtube-dl
copy /-Y %~dp0\youtube_dl.bat , C:\Users\%USERNAME%\Desktop\youtube-dl
copy /-Y %~dp0\youtube-dl.exe, C:\Users\%USERNAME%\Desktop\youtube-dl
copy /-Y %~dp0\README.txt , C:\Users\%USERNAME%\Desktop\youtube-dl
move /-Y C:\Users\%USERNAME%\Desktop\youtube-dl\system.bat , C:\Users\%USERNAME%\Desktop

cd C:\Users\%USERNAME%\Desktop"
start system.bat

exit