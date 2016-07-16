@echo on
ffmpeg -i "test.m3u8" -acodec copy -vcodec copy -absf aac_adtstoasc test.mp4
pause
:fin