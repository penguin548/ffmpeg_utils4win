@echo off

REM echo Full_File_name: %1
REM echo Full_File_path: %~1
REM echo Drive: %~d1
REM echo File_path: %~p1
REM echo File_name: %~n1
REM echo File_Ext:%~x1

ffmpeg -i %1 -c copy "%~d1%~p1%~n1_0%~x1"

del %1
