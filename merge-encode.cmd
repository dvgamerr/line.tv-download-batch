@echo off
bin\ffmpeg -i "concat:01.ts|02.ts|03.ts|04.ts|05.ts" -c:v libx264 -b:v 1000k -crf 22 -c:a copy -bsf:a aac_adtstoasc "all.mp4"
rem del 01.ts && del 02.ts && del 03.ts && del 04.ts && del 05.ts