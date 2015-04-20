Process, Priority, , High
#NoEnv
EnvUpdate  ; Make sure to update environment variables.
;==============================================================================
;================================ Set Hotkeys =================================
;==============================================================================

;------------------------------------------------------------------------------
; Windows Explorer
;1)WinExplorer -- Backspace in windows explorer.
;2)WinExplorer -- MButton : open in Sublime Text 3.
;------------------------------------------------------------------------------
#IfWinActive, ahk_class CabinetWClass
Backspace::
   ControlGet renamestatus,Visible,,Edit1,A
   ControlGetFocus focussed, A
   if(renamestatus!=1&&(focussed="DirectUIHWND3"||focussed=SysTreeView321))
   {
    SendInput {Alt Down}{Up}{Alt Up}
  }else{
      Send {Backspace}
  }
  return

MButton::
    Click
    Gosub CapsLock
    return
CapsLock::
    t := Clipboard
    Sleep, 10
    Send, ^c
    file =%Clipboard%
    Clipboard := t
    IfInString,file,.pdf
    {
      app=sumatrapdf.exe
    }
    Else If InStr(file,".7z") or InStr(file,".zip") or InStr(file,".tar")
    {
      SplitPath, file,, outdir
      Run 7z x "%file%" -o"%outdir%"
      return
    }
    Else
    {
      app=sublime_text.exe
    }
    Run %app% "%file%"
    return
#IfWinActive

;---------------------------------------------------------------------------
; Win + A : Open PortableApps menu
;---------------------------------------------------------------------------
#a::
SetTitleMatchMode, 1
WinActivate, PortableApps.com Platform
return

; ===========================================================================
; Run or Activate
; Win + S : Sublime Text
; Win + C : Chrome
;http://www.autohotkey.com/board/topic/7129-run-a-program-or-switch-to-an-already-running-instance/
; ===========================================================================

#s::RunOrActivate("sublime_text.exe")
#c::RunOrActivate("chrome.exe")

RunOrActivate(Target, WinTitle = "")
{
  ; Get the filename without a path
  SplitPath, Target, TargetNameOnly

  Process, Exist, %TargetNameOnly%
  If ErrorLevel > 0
    PID = %ErrorLevel%
  Else
    Run, %Target%, , , PID

  If WinTitle <>
  {
    SetTitleMatchMode, 2
    WinWait, %WinTitle%, , 3
    TrayTip, , Activating Window Title "%WinTitle%" (%TargetNameOnly%)
    WinActivate, %WinTitle%
  }
  Else
  {
    WinWait, ahk_pid %PID%, , 3
    TrayTip, , Activating PID %PID% (%TargetNameOnly%)
    WinActivate, ahk_pid %PID%
  }


  SetTimer, RunOrActivateTrayTipOff, 1500
}

; Turn off the tray tip
RunOrActivateTrayTipOff:
  SetTimer, RunOrActivateTrayTipOff, off
  TrayTip
Return