; This was way too slow under Windows 8
; Use batch file instead.

Process, Priority, , High
#NoEnv
EnvUpdate  ; Make sure to update environment variables.
;======================================
;========== Start Caffeine ============
;======================================
EnvGet, pal_drive, DRIVE
caffeine_exe=%pal_drive%\Apps\Caffeine\caffeine.exe
MsgBox, 4, Caffeine?, Do you want to run Caffeine?
IfMsgBox, Yes
    Run %caffeine_exe%
return