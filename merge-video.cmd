@echo off
bin\ffmpeg -i "concat:01.ts|02.ts|03.ts|04.ts|05.ts" -acodec copy -vcodec copy -absf aac_adtstoasc "U-PRINCE Series EP.8.mp4"
del 01.ts && del 02.ts && del 03.ts && del 04.ts && del 05.ts