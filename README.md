# Youtube-dl-batch-script
Quick ytdl batch script with video and audio options for when you just want the video or audio downloaded fast.


Before starting the installation with the provided rudimentary installer, you need to add the following FFmpeg files to your "youtube-dl" folder since they are above the GitHub file size limit.

-ffmpeg
-ffplay
-ffprobe

(Or alternatively use this link to download a 80 MB .zip file with everything inculded: https://mega.nz/folder/BKhkCRCQ#XGXLuJjFftxLLoapetYovQ)

Link to ffmpeg: (choose Windows .exe version)
https://ffmpeg.org/download.html

What downloaded folder moved to desktop should look like:
![image](https://user-images.githubusercontent.com/87437624/125656120-7e8c1555-ffdb-4276-b37c-4a5961149e6b.png)


To start the installation, copy the "youtube-dl" folder from the zip to your desktop, 
then click the file "Open to Install YoutubeDL" and type in your windows user as instructed (needed to configure download and installation paths)
![image](https://user-images.githubusercontent.com/87437624/125660113-357368e2-2f24-4f49-ae9d-9fd883a8558c.png)

The installer moves the .exe files to C:\Users\user\Documents\youtube-dl, and copies the main batch file "youtube_dl.bat" to your desktop along with adding your username to it.


This YoutubeDL scripts works via the aforementioned windows batch file called "youtube_dl", that is placed on your desktop on installation.

The script has 4 modes, video, audio, audio playlist and video playlist that are selected through the batch file using a simple (Y/N)? type form.

Each of them are saved to different locations: single video and audio to the desktop, and playlists to either Users\Music\Downloads or Users\Videos\Downloads depending on type.

At this moment the location cannot be easily changed but is still of course possible by editing the batch file "youtube_dl" on your desktop manually if need be. 
(Note that the process is quite tedious at the moment, best to open in word and Ctrl+F and replace the original location with the new one, 
In the future I might add a configurator that can change the download location and download settings for this reason)

Downloaded video quality is set to highest possible, Mp4 + M4a, with thumbnails automatically attached to the file.

Audio is downloaded as mp3 with thumbnails enabled also.

Downloads are also saved by their video titles.

Used youtube dl scrpits, note that output location's username is a placeholder, and is changed on installation.

youtube-dl --extract-audio -i --audio-format mp3 --download-archive downloaded.txt --add-metadata --xattrs --embed-thumbnail --yes-playlist --output C:\Users\Markus\Music\Downloads\%%(title)s.%%(ext)s %urlyt%

youtube-dl -i -f bestvideo[ext=mp4]+bestaudio[ext=m4a] --yes-playlist --download-archive downloaded.txt --add-metadata --xattrs --embed-thumbnail --output C:\Users\Markus\Videos\Downloads\%%(title)s.%%(ext)s %urlyt%

The script keeps track of downloaded videos using the ytdl provided feature (--download-archive downloaded.txt), so if you want to periodically save a playlist, the script only downloads videos that are newly added to the playlist.

The script also gives off a Windows notification when the download has finished and opens the location of the current download for easy access. After the download has completed, you are also given an option to use the current download settings for a new download or to configure the downloader again.

AtomicParsley is responsible for thumbnails, and FFmpeg for conversions of video and audio codecs. This batch file merely configures the ytdl .exe application in a quick and easy fashion. I hope you like it!
![image](https://user-images.githubusercontent.com/87437624/125656729-8a653925-fddf-4a23-9434-77a48449c564.png)
