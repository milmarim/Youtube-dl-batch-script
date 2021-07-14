:again 
@echo off

title Youtube Downloader

echo YOUTUBE DOWNLOADER V.1
echo.
echo ====================================================================================================================================
@echo off
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo =  ====  =============================  ============       ============================  ===================  ======================
@echo off
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo =   ==   =============================  ============  ====  ===========================  ===================  ======================
@echo off
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ==  ==  ==================  ==========  ============  ====  ===========================  ===================  ======================
@echo off
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ==  ==  ====   ===  =  ==    ==  =  ==  ======   ===  ====  ===   ===  =   =  ==  = ===  ===   ====   ======  ===   ===  =   =======
@echo off
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ===    ====     ==  =  ===  ===  =  ==    ===  =  ==  ====  ==     ==  =   =  ==     ==  ==     ==  =  ===    ==  =  ==    =  ======
@echo off
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ====  =====  =  ==  =  ===  ===  =  ==  =  ==     ==  ====  ==  =  ===   =   ===  =  ==  ==  =  =====  ==  =  ==     ==  ===========
@echo off
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ====  =====  =  ==  =  ===  ===  =  ==  =  ==  =====  ====  ==  =  ===   =   ===  =  ==  ==  =  ===    ==  =  ==  =====  ===========
@echo off
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ====  =====  =  ==  =  ===  ===  =  ==  =  ==  =  ==  ====  ==  =  ==== === ====  =  ==  ==  =  ==  =  ==  =  ==  =  ==  ===========
@echo off
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ====  ======   ====    ===   ===    ==    ====   ===       ====   ===== === ====  =  ==  ===   ====    ===    ===   ===  ===========
@echo off
set wait=%1
echo wscript.sleep %wait%20 > wait.vbs
wscript.exe wait.vbs
del wait.vbs
echo ====================================================================================================================================
echo.

                                                                                                                                                                    
set /p av=Audio or Video? (A/V):
cls
echo YOUTUBE DOWNLOADER V.1
if /I %av%==a (
   goto :audio
     ) else if /I %av%==v (
       goto :video
         ) else if /I %av%==C (
           goto :secret
             ) else (
               echo Incorrect Input
               echo Try to hit your keys and write something coherent!
               goto :again
               )
            

:secret
cls
echo Congratulations! You have found the secret! I wish you 10 years of good luck!
pause
cls
goto :again


:audio
echo Selected Audio
set /p plist=Playlist? (Y/N):
cls
if /I %plist%==y (
   goto :plistaudio
   ) else if /I %plist%==n (
       goto :nonplistaudio
       ) else (
            cls
            echo YOUTUBE DOWNLOADER V.1
            echo.
            echo Incorrect Input
            echo Try to hit your keys and write something coherent!
            echo.
            goto :audio
            )


:plistaudio
cls
echo YOUTUBE DOWNLOADER V.1
echo Selected Audio Playlist
set /p urlyt=Playlist URL: 
cls
echo YOUTUBE DOWNLOADER V.1
cd C:\Users\Markus\Documents\youtube-dl
youtube-dl --extract-audio -i --audio-format mp3 --download-archive downloaded.txt --add-metadata --xattrs --embed-thumbnail --yes-playlist --output C:\Users\Markus\Music\Downloads\%%(title)s.%%(ext)s %urlyt%
echo.
echo YOUTUBE DOWNLOADER V.1
echo Might have completed download!
echo off

powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Download Complete!', 'YTDL may have completed your audio download.', [System.Windows.Forms.ToolTipIcon]::None)}"
%SystemRoot%\explorer.exe "C:\Users\Markus\Music\Downloads\"
echo (Settings: Audio Playlist, mp3, C:\Users\Markus\Music\Downloads\...)
echo (URL: %urlyt%)


:Newdl1
set /p close=New donwload using same settings? (Y/N):
if /I %close% == y (
    goto :plistaudio
    ) else if /I %close% == n (
        goto :again
        ) else ( 
          cls
          echo YOUTUBE DOWNLOADER V.1
          echo Incorrect Input
          echo Try to hit your keys and write something coherent!
          goto :Newdl1
          )


:nonplistaudio
cls
echo YOUTUBE DOWNLOADER V.1
echo Selected Audio
set /p urlyt=Video URL: 
cls
echo YOUTUBE DOWNLOADER V.1
cd C:\Users\Markus\Documents\youtube-dl
youtube-dl --extract-audio --audio-format mp3 --add-metadata --xattrs --embed-thumbnail --output C:\Users\Markus\Desktop\%%(title)s.%%(ext)s %urlyt%
echo.
echo YOUTUBE DOWNLOADER V.1
echo Might have completed download!
@echo off
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Download Complete!', 'YTDL may have completed your audio download.', [System.Windows.Forms.ToolTipIcon]::None)}"
%SystemRoot%\explorer.exe "C:\Users\Markus\Desktop\"
echo (Settings: Audio, mp3, C:\Users\Markus\Desktop\...)
echo (URL: %urlyt%)


:Newdl2
set /p close=New donwload using same settings? (Y/N):
if /I %close% == y (
    goto :nonplistaudio
    ) else if /I %close% == n (
      goto :again
      ) else ( 
        cls
        echo YOUTUBE DOWNLOADER V.1
        echo Incorrect Input
        echo Try to hit your keys and write something coherent!
        goto :Newdl2
        )

:video
cls
echo Selected Video
set /p plist=Playlist? (Y/N):
cls
if /I %plist%==y (
  goto :plistvideo
  ) else if /I %plist%==n (
    goto :nonplistvideo
    ) else (
      cls
      echo YOUTUBE DOWNLOADER V.1
      echo Incorrect Input
      echo Try to hit your keys and write something coherent!
      goto :video
      )


:plistvideo
cls
echo Selected Video Playlist
set /p urlyt=Playlist URL:
cls
echo YOUTUBE DOWNLOADER V.1
cd C:\Users\Markus\Documents\youtube-dl
youtube-dl -i -f bestvideo[ext=mp4]+bestaudio[ext=m4a] --yes-playlist --download-archive downloaded.txt --add-metadata --xattrs --embed-thumbnail --output C:\Users\Markus\Videos\Downloads\%%(title)s.%%(ext)s %urlyt%
echo.
echo YOUTUBE DOWNLOADER V.1
echo Might have completed download!
@echo off
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Download Complete!', 'YTDL may have completed your video download.', [System.Windows.Forms.ToolTipIcon]::None)}"
%SystemRoot%\explorer.exe "C:\Users\Markus\Videos\Downloads\"
echo (Settings: Video Playlist, mp4+m4a, Best Quality, C:\Users\Markus\Videos\Downloads\...)
echo (URL: %urlyt%)

:Newdl3
set /p close=New donwload using same settings? (Y/N):
if /I %close% == y (
    goto :plistvideo
    ) else if /I %close% == n (
      goto :again
      ) else ( 
        cls
        echo YOUTUBE DOWNLOADER V.1
        echo Incorrect Input
        echo Try to hit your keys and write something coherent!
        goto :Newdl3
        )


:nonplistvideo
echo Selected Video
set /p urlyt=Video URL:
cls
echo YOUTUBE DOWNLOADER V.1
cd C:\Users\Markus\Documents\youtube-dl
youtube-dl -f bestvideo[ext=mp4]+bestaudio[ext=m4a] --download-archive downloaded.txt --add-metadata --xattrs --embed-thumbnail --output C:\Users\Markus\Desktop\%%(title)s.%%(ext)s %urlyt%
echo.
echo YOUTUBE DOWNLOADER V.1
echo Might have compelted download!
@echo off
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Download Complete!', 'YTDL may have completed your video download.', [System.Windows.Forms.ToolTipIcon]::None)}"
%SystemRoot%\explorer.exe "C:\Users\Markus\Desktop"
echo (Settings: Video, mp4,m4a, Best Quality, C:\Users\Markus\Desktop\...)
echo (URL: %urlyt%)


:Newdl4
set /p close=New donwload using same settings? (Y/N):
if /I %close% == y (
    goto :nonplistvideo
    ) else if /I %close% == n (
      cls
      goto :again
        ) else ( 
          cls
          echo YOUTUBE DOWNLOADER V.1
          echo Incorrect Input
          echo Try to hit your keys and write something coherent!
          goto :Newdl4
          )

