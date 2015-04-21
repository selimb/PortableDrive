@echo off

setlocal

IF %DRIVE% == "" (
    SET DRIVE=%cd:~0,2%
    ECHO DRIVE has been set to %DRIVE%
    )

cd "%~dp0"

SET SOURCE=""
SET VERB=Push

:: Profile
SET F=profile
SET DEST=%DRIVE%\Apps\PortableApps\GitPortable\App\Git\etc\
call:move

:: ConEmu.xml
SET F=ConEmu.xml
SET DEST=%DRIVE%\Apps\PortableApps\ConEmu\Data\settings\
call:move

ECHO Done.
goto:eof

:move
call my_move %F% %SOURCE% %DEST% %VERB%
goto:eof