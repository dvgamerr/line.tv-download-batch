@echo off
SETLOCAL EnableDelayedExpansion
SET filename=%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%%TIME:~9,2%
SET uri=%2
SET link=%uri:~1,86%
SET key=%uri:~61,26%
SET param=%uri:~121,52%
TITLE LineTV Downloading '%key%'...
MD m3u8 >nul
ECHO.
ECHO link: %link% 
ECHO key: %key% 
ECHO param: %param%
ECHO.

bin\cURL %uri% > m3u8\%1.tmpfile
DEL m3u8\%1.m3u8 >nul
FOR /F %%G IN (m3u8\%1.tmpfile) DO (
	SET str=%%G
	SET str=!str:%key%=%link%!
	SET str=!str:.ts=.ts%param%!

	ECHO !str! >> m3u8\%1.m3u8
)
DEL m3u8\%1.tmpfile
bin\ffmpeg -i "m3u8\%1.m3u8" -vcodec copy -acodec copy -f mpegts %1.ts
