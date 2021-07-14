@echo off
timeout 2
move /-Y C:\Users\Markus\Desktop\youtube-dl\youtube_dl.bat , C:\Users\Markus\Desktop
move /-Y C:\Users\Markus\Desktop\youtube-dl , C:\Users\Markus\Documents                               
echo Finished installation, press any key to continue, start YTDL by clicking the "youtube_dl" batch file on you desktop!
pause

( del /q /f "%~f0" >nul 2>&1 & exit /b 0  )

