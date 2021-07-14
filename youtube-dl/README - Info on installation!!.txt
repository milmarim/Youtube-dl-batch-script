/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
To start the installation, copy the "youtube-dl" folder from the zip to your desktop, then click the file "Open to Install YoutubeDL" and type in your username as instructed
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

This YoutubeDL scripts works via a windows batch file called "youtube_dl", that is placed on your desktop on installation.

The script has 4 modes, video, audio, audio playlist and video playlist that are selected through the batch file using a simple (Y/N)? letter type form.

Each of them are saved to different locations: single video and audio to the desktop, and playlists to either Users\Music\Downloads or Users\Videos\Downloads depending on type.

The location can be changed by editing the batch file "youtube_dl" on your desktop manually if need be. 
(Note that the process is quite tedious at the moment, best to open in word and Ctrl+F and replace the original location with the new one)

Downloaded video quality is set to highest possible, Mp4 + M4a, with thumbnails automatically attached to the file

Audio is downloaded as mp3 with thumbnails enabled also.

The script keeps track of downloaded videos, so if you want to periodically save a playlist, the script only downloads videos that are newly added to the playlist.

AtomicParsley is responsible for thumbnails, and FFmpeg for conversions of video and audio codecs. This batch file merely configures the ytdl .exe application in a quick and easy fashion. I hope you like it!