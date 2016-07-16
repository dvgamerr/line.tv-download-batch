@echo on
ffmpeg -i "concat:1.ts|2.ts|3.ts|4.ts|5.ts" -acodec copy -vcodec copy -absf aac_adtstoasc all.mp4
pause