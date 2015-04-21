Process, Priority, , High
#NoEnv
EnvUpdate  ; Make sure to update environment variables.
;======================================
;==== Set Sumatra inverse search ======
;======================================
EnvGet, sumatra_dir, SUMATRA_DIR
EnvGet, sublime_dir, SUBLIME_DIR
sublime_exe=%sublime_dir%\sublime_text.exe
sumatra_settings=%sumatra_dir%\SumatraPDF-settings.txt
FileRead, old_settings, %sumatra_settings%
needle=.*InverseSearchCmdLine.*
replacement=InverseSearchCmdLine = "%sublime_exe%" "`%f:`%l"
; MsgBox %old_settings%
IfInString,old_settings,InverseSearch
{
  ; MsgBox "If"
  new_settings := RegExReplace(old_settings, needle,replacement)
  ; MsgBox %new_settings%
}
else
{
  ; MsgBox "Else"
  new_settings := old_settings . replacement
  ; MsgBox %new_settings%
}
FileDelete, %sumatra_settings%
FileAppend, %new_settings%, %sumatra_settings%


;=======================================
;==== Set ConEmu Background Color ======
;=======================================
; EnvGet, sumatra_dir, SUMATRA_DIR
; EnvGet, sublime_dir, SUBLIME_DIR
; sublime_exe=%sublime_dir%\sublime_text.exe
; sumatra_settings=%sumatra_dir%\SumatraPDF-settings.txt
; FileRead, old_settings, %sumatra_settings%
; needle=.*InverseSearchCmdLine.*
; replacement=InverseSearchCmdLine = "%sublime_exe%" "`%f:`%l"
; ; MsgBox %old_settings%
; IfInString,old_settings,InverseSearch
; {
;   ; MsgBox "If"
;   new_settings := RegExReplace(old_settings, needle,replacement)
;   ; MsgBox %new_settings%
; }
; else
; {
;   ; MsgBox "Else"
;   new_settings := old_settings . replacement
;   ; MsgBox %new_settings%
; }
; FileDelete, %sumatra_settings%
; FileAppend, %new_settings%, %sumatra_settings%
; return

return