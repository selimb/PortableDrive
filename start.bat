@echo off
call bin\start\set_env.bat
:: call "WinPython-64bit-3.4.2.4\scripts\env.bat"
call bin\start\start_caffeine.bat
:: call bin\start\file_replace.exe
start bin\start\hotkeys.exe
Apps\Start.exe