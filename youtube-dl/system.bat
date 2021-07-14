@echo off
title Youtube-dl Batch Installer
move /-Y C:\Users\Markus\Desktop\youtube-dl\youtube_dl.bat , C:\Users\Markus\Desktop
move /-Y C:\Users\Markus\Desktop\youtube-dl , C:\Users\Markus\Documents                               
echo Finished installation, press any key to continue, start YTDL by clicking the "youtube_dl" batch file on your desktop!
pause

del "%~f0" & exit

