@echo off

setlocal

cd "%~dp0"

SET /P ANSWER=Are you sure you want to delete old files (Y/N)?
if /i {%ANSWER%}=={y} (goto :yes)
goto :eof

:yes
ECHO Deleting files...
DEL *old*