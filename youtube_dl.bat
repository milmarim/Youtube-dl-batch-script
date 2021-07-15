:again 
@echo off
title Youtube Downloader
Set VERSION=1.1.4

set one=%np%C:\Users\Markus\Desktop\%np%
set two=%ap%C:\Users\Markus\Music\Downloads\%ap%
set three=%nv%C:\Users\Markus\Desktop\%nv%
set four=%vp%C:\Users\Markus\Videos\Downloads\%vp%

set np=
set ap=
set nv=
set vp=


echo YOUTUBE DOWNLOADER %VERSION%
echo.
echo ====================================================================================================================================
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo =  ====  =============================  ============       ============================  ===================  ======================
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo =   ==   =============================  ============  ====  ===========================  ===================  ======================
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ==  ==  ==================  ==========  ============  ====  ===========================  ===================  ======================
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ==  ==  ====   ===  =  ==    ==  =  ==  ======   ===  ====  ===   ===  =   =  ==  = ===  ===   ====   ======  ===   ===  =   =======
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ===    ====     ==  =  ===  ===  =  ==    ===  =  ==  ====  ==     ==  =   =  ==     ==  ==     ==  =  ===    ==  =  ==    =  ======
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ====  =====  =  ==  =  ===  ===  =  ==  =  ==     ==  ====  ==  =  ===   =   ===  =  ==  ==  =  =====  ==  =  ==     ==  ===========
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ====  =====  =  ==  =  ===  ===  =  ==  =  ==  =====  ====  ==  =  ===   =   ===  =  ==  ==  =  ===    ==  =  ==  =====  ===========
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ====  =====  =  ==  =  ===  ===  =  ==  =  ==  =  ==  ====  ==  =  ==== === ====  =  ==  ==  =  ==  =  ==  =  ==  =  ==  ===========
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ====  ======   ====    ===   ===    ==    ====   ===       ====   ===== === ====  =  ==  ===   ====    ===    ===   ===  ===========
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ====================================================================================================================================
echo.

echo YOUTUBE DOWNLOADER %VERSION%
set /p op=Change Location Settings? (Y/N):
if /I %op%==y (
   goto :loc
     ) else if /I %op%==n (
       goto :next
         ) else if /I %op%==C (
           goto :secret
             ) else (
               echo Incorrect Input
               echo Try to hit your keys and write something coherent!
               echo.
               goto :again
               )

:loc
cd C:\Users\%USERNAME%\Documents\youtube-dl
start Change_Download_Locations.bat & exit

:next
echo.
echo YOUTUBE DOWNLOADER %VERSION%
set /p av=Audio or Video? (A/V):
if /I %av%==a (
   goto :audio
     ) else if /I %av%==v (
       goto :video
         ) else if /I %av%==C (
           goto :secret
             ) else (
               echo Incorrect Input
               echo Try to hit your keys and write something coherent!
               goto :next
               )
            

:secret

echo Congratulations! You have found the secret! I wish you 10 years of good luck!
pause
echo.
goto :again


:audio
echo.
echo YOUTUBE DOWNLOADER %VERSION%
echo Selected Audio
set /p plist=Playlist? (Y/N):
echo.
if /I %plist%==y (
   goto :plistaudio
   ) else if /I %plist%==n (
       goto :nonplistaudio
       ) else (
            echo.
            echo YOUTUBE DOWNLOADER %VERSION%
            echo.
            echo Incorrect Input
            echo Try to hit your keys and write something coherent!
            echo.
            goto :audio
            )


:plistaudio
echo.
echo YOUTUBE DOWNLOADER %VERSION%
echo Selected Audio Playlist Download
set /p urlyt=Playlist URL: 
echo.
echo YOUTUBE DOWNLOADER %VERSION%
cd C:\Users\Markus\Documents\youtube-dl
youtube-dl --extract-audio -i --audio-format mp3 --download-archive downloaded.txt --add-metadata --xattrs --embed-thumbnail --yes-playlist --output %two%\%%(title)s.%%(ext)s %urlyt%
echo.
echo YOUTUBE DOWNLOADER %VERSION%
echo Might have completed download!


powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Download Complete!', 'YTDL may have completed your audio download.', [System.Windows.Forms.ToolTipIcon]::None)}"
%SystemRoot%\explorer.exe "%two%"
echo (Settings: Audio Playlist, mp3, %two%)
echo (URL: %urlyt% )


:Newdl1
echo.
echo YOUTUBE DOWNLOADER %VERSION%
set /p close=New donwload using same settings? (Y/N):
if /I %close% == y (
    goto :plistaudio
    ) else if /I %close% == n (
        echo.
        goto :again
        ) else ( 
          echo.
          echo YOUTUBE DOWNLOADER %VERSION%
          echo Incorrect Input
          echo Try to hit your keys and write something coherent!
          goto :Newdl1
          )


:nonplistaudio
echo.
echo YOUTUBE DOWNLOADER %VERSION%
echo Selected Single Audio Download
set /p urlyt=Video URL: 
echo.
echo YOUTUBE DOWNLOADER %VERSION%
cd C:\Users\Markus\Documents\youtube-dl
youtube-dl --extract-audio --audio-format mp3 --add-metadata --xattrs --embed-thumbnail --output %one%\%%(title)s.%%(ext)s %urlyt%
echo.
echo YOUTUBE DOWNLOADER %VERSION%
echo Might have completed download!
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Download Complete!', 'YTDL may have completed your audio download.', [System.Windows.Forms.ToolTipIcon]::None)}"
%SystemRoot%\explorer.exe "%one%"
echo (Settings: Audio, mp3, %one%)
echo (URL: %urlyt% )


:Newdl2
echo.
echo YOUTUBE DOWNLOADER %VERSION%
set /p close=New donwload using same settings? (Y/N):
if /I %close% == y (
    goto :nonplistaudio
    ) else if /I %close% == n (
      echo.
      goto :again
      ) else ( 
        echo.
        echo YOUTUBE DOWNLOADER %VERSION%
        echo Incorrect Input
        echo Try to hit your keys and write something coherent!
        goto :Newdl2
        )

:video
echo.
echo YOUTUBE DOWNLOADER %VERSION%
echo Selected Video
set /p plist=Playlist? (Y/N):

if /I %plist%==y (
  goto :plistvideo
  ) else if /I %plist%==n (
    goto :nonplistvideo
    ) else (
      echo.
      echo YOUTUBE DOWNLOADER %VERSION%
      echo Incorrect Input
      echo Try to hit your keys and write something coherent!
      goto :video
      )


:plistvideo
echo.
echo Selected Video Playlist Download
set /p urlyt=Playlist URL:
echo.
echo YOUTUBE DOWNLOADER %VERSION%
cd C:\Users\Markus\Documents\youtube-dl
youtube-dl -i -f bestvideo[ext=mp4]+bestaudio[ext=m4a] --yes-playlist --download-archive downloaded.txt --add-metadata --xattrs --embed-thumbnail --output %four%\%%(title)s.%%(ext)s %urlyt%
echo.
echo YOUTUBE DOWNLOADER %VERSION%
echo Might have completed download!
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Download Complete!', 'YTDL may have completed your video download.', [System.Windows.Forms.ToolTipIcon]::None)}"
%SystemRoot%\explorer.exe "%four%"
echo (Settings: Video Playlist, mp4+m4a, Best Quality, %four%)
echo (URL: %urlyt% )

:Newdl3
echo.
echo YOUTUBE DOWNLOADER %VERSION%
set /p close=New donwload using same settings? (Y/N):
if /I %close% == y (
    goto :plistvideo
    ) else if /I %close% == n (
      echo.
      goto :again
      ) else ( 
        echo.
        echo YOUTUBE DOWNLOADER %VERSION%
        echo Incorrect Input
        echo Try to hit your keys and write something coherent!
        goto :Newdl3
        )


:nonplistvideo
echo Selected Single Video Download
set /p urlyt=Video URL:
echo.
echo YOUTUBE DOWNLOADER %VERSION%
cd C:\Users\Markus\Documents\youtube-dl
youtube-dl -f bestvideo[ext=mp4]+bestaudio[ext=m4a] --download-archive downloaded.txt --add-metadata --xattrs --embed-thumbnail --output %three%\%%(title)s.%%(ext)s %urlyt%
echo.
echo YOUTUBE DOWNLOADER %VERSION%
echo Might have compelted download!
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Download Complete!', 'YTDL may have completed your video download.', [System.Windows.Forms.ToolTipIcon]::None)}"
%SystemRoot%\explorer.exe "%three%"
echo (Settings: Video, mp4,m4a, Best Quality, %three%)
echo (URL: %urlyt% )


:Newdl4
echo.
echo YOUTUBE DOWNLOADER %VERSION%
set /p close=New donwload using same settings? (Y/N):
if /I %close% == y (
    goto :nonplistvideo
    ) else if /I %close% == n (
      echo.
      goto :again
        ) else ( 
          echo.
          echo YOUTUBE DOWNLOADER %VERSION%
          echo Incorrect Input
          echo Try to hit your keys and write something coherent!
          goto :Newdl4
          )
