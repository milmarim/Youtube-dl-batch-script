@echo off
Title Change_Download_Locations
:again   
echo.                                                                                                                          
set /p av=Change Audio or Video Download location? (A/V):
echo.
if /I %av%==a (
   goto :audio
     ) else if /I %av%==v (
       goto :video
             ) else (
               echo Incorrect Input
               echo Try to hit your keys and write something coherent!
               goto :again
               )
            


:audio
echo Selected Audio Download Location Change
set /p plist=Change playlist download location? (Y/N):
echo.
if /I %plist%==y (
   goto :plistaudio
   ) else if /I %plist%==n (
       goto :nonplistaudio
       ) else (
            
            echo.
            echo Incorrect Input
            echo Try to hit your keys and write something coherent!
            echo.
            goto :audio
            )


:plistaudio
echo.
echo Selected Audio Playlist Download Location Change
set /p loc1=Location for Audio Playlists (Example: C:\Users\%USERNAME%\Desktop):

cd C:\Users\%USERNAME%\Desktop
powershell -Command "(gc youtube_dl.bat) -replace '%%ap%%.*?%%ap%%' , '%%ap%%%loc1%%%ap%%' | Out-File -encoding ASCII youtube_dl.bat"
echo.
echo Audio playlist download location changed to "%loc1%"
:ag11
echo.
set /p ag1=Change Other Locations? (Y/N):

if /I %ag1%==y (
   goto :again
     ) else if /I %ag1%==n (
       exit
             ) else (
               echo Incorrect Input
               echo Try to hit your keys and write something coherent!
               goto :ag11
               )

:nonplistaudio
echo.
echo Selected Audio Download Location Change
set /p loc2=Location for Audio Downloads (Example: C:\Users\%USERNAME%\Desktop):

cd C:\Users\%USERNAME%\Desktop
powershell -Command "(gc youtube_dl.bat) -replace '%%np%%.*?%%np%%' , '%%np%%%loc2%%%np%%' | Out-File -encoding ASCII youtube_dl.bat"
echo.
echo Audio download location changed to "%loc2%"

:ag21
echo.
set /p ag2=Change Other Locations? (Y/N):

if /I %ag2%==y (
   goto :again
     ) else if /I %ag2%==n (
       exit
             ) else (
               echo Incorrect Input
               echo Try to hit your keys and write something coherent!
               goto :ag21
               )

:video
echo.
echo Selected Video Download Location
set /p plist=Change Playlist Location? (Y/N):
echo.
if /I %plist%==y (
  goto :plistvideo
  ) else if /I %plist%==n (
    goto :nonplistvideo
    ) else (
      echo.
      echo Incorrect Input
      echo Try to hit your keys and write something coherent!
      goto :video
      )


:plistvideo
echo.
echo Selected Video Playlist Location Change
set /p loc3=Location for Video Playlists (Example: C:\Users\%USERNAME%\Desktop):

cd C:\Users\%USERNAME%\Desktop
powershell -Command "(gc youtube_dl.bat) -replace '%%vp%%.*?%%vp%%' , '%%vp%%%loc3%%%vp%%' | Out-File -encoding ASCII youtube_dl.bat"
echo.
echo Video playlist download location changed to "%loc3%"

:ag31
echo.
set /p ag3=Change Other Locations? (Y/N):

if /I %ag3%==y (
   goto :again
     ) else if /I %ag3%==n (
       exit
             ) else (
               echo Incorrect Input
               echo Try to hit your keys and write something coherent!
               goto :ag31
               )

:nonplistvideo
echo Selected Video Download Location Change
set /p loc4=Location for Video Downloads (Example: C:\Users\%USERNAME%\Desktop):


cd C:\Users\%USERNAME%\Desktop
powershell -Command "(gc youtube_dl.bat) -replace '%%nv%%.*?%%nv%%' , '%%nv%%%loc4%%%nv%%' | Out-File -encoding ASCII youtube_dl.bat"
echo.
echo Audio playlist download location changed to "%loc4%"

:ag11
echo.
set /p ag3=Change Other Locations? (Y/N):

if /I %ag3%==y (
   goto :again
     ) else if /I %ag3%==n (
       exit
             ) else (
               echo Incorrect Input
               echo Try to hit your keys and write something coherent!
               goto :ag31
               )


