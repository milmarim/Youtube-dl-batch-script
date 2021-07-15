@echo off
title Youtube-dl Batch Installer
move /-Y C:\Users\Markus\Desktop\youtube-dl\youtube_dl.bat , C:\Users\Markus\Desktop
move /-Y C:\Users\Markus\Desktop\youtube-dl , C:\Users\Markus\Documents 
cls                             
echo Finished installation, press any key to exit, start YTDL by clicking the "youtube_dl" batch file on your desktop! You can edit the download locations with the .bat file located in the opened directory or with the main ytdl .bat!
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Youtube-DL completed installation!', 'The Youtube_dl-batch script has been placed on your desktop!', [System.Windows.Forms.ToolTipIcon]::None)}"
pause
start C:\Users\Markus\Desktop\youtube_dl.bat

cd "C:\Users\%USERNAME%\Desktop"
del system.bat /q & exit

