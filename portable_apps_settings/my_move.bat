@echo off

setlocal

:: my_move(NAME, SOURCE, DEST, VERB)
SET F=%1
SET SRC=%2
SET DST=%3
SET VERB=%4

REM Check for empties
IF %SRC%=="" SET SRC=
IF %DST%=="" SET DST=
ECHO %F%
ECHO %SRC%
ECHO %DST%
ECHO %VERB%
PAUSE

SET /P ANSWER=%VERB% %F% (Y/N)?
if /i {%ANSWER%}=={y} (goto :yes)
goto :eof
:yes
IF EXIST %DST%%F% (
    ECHO Moving "%DST%%F%" to "%F%_old%VERB%"...
    move %DST%%F% %F%_old%VERB%
    )
ECHO Copying "%SRC%%F%" to %DST%%F%...
copy %SRC%%F% %DST%%F%