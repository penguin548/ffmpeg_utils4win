@echo off

REM echo Full_File_name: %1
REM echo Full_File_path: %~1
REM echo Drive: %~d1
REM echo File_path: %~p1
REM echo File_name: %~n1
REM echo File_Ext:%~x1

set /p SS="How long cut at head ? [s]:"

REM ex : ffmpeg -ss [duration] -i input.mp4 -c copy output.mp4
ffmpeg -ss %SS% -i %1 -c copy "%~d1%~p1%~n1_cut%~x1"
