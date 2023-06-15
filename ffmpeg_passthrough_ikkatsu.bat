@echo off

REM echo Full_File_name: %1
REM echo Full_File_path: %~1
REM echo Drive: %~d1
REM echo File_path: %~p1
REM echo File_name: %~n1
REM echo File_Ext:%~x1

REM ffmpeg -i %1 -c copy "%~d1%~p1%~n1_0%~x1"

REM del %1


for %%f in (%*) do (
	ffmpeg -i %%f -c copy "%%~df%%~pf%%~nf_0%%~xf"
	del %%f
	REM echo Full_File_name: %%f
	REM echo Full_File_path: %%~f
	REM echo Drive: %%~df
	REM echo File_path: %%~pf
	REM echo File_name: %%~nf
	REM echo File_Ext:%%~xf
	REM echo %%f
	echo 処理済み:%%f
)

