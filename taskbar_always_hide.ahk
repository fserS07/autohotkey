; Auto-hide and show taskbar only on Win key press

#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; Get the taskbar window handle
DetectHiddenWindows, On
taskbar := WinExist("ahk_class Shell_TrayWnd")

; Function to hide the taskbar
HideTaskbar() {
    global taskbar
    WinHide, ahk_id %taskbar%
}

; Function to show the taskbar
ShowTaskbar() {
    global taskbar
    WinShow, ahk_id %taskbar%
    WinActivate, ahk_id %taskbar%
}

; Initially hide the taskbar
HideTaskbar()

; When Left Win key is pressed down
LWin::
    ShowTaskbar()
return

; When Left Win key is released
LWin Up::
    SetTimer, HideTaskbarTimer, -1500 ; hide after 1.5 seconds
return

HideTaskbarTimer:
    HideTaskbar()
return

; When Right Win key is pressed down
RWin::
    ShowTaskbar()
return

; When Right Win key is released
RWin Up::
    SetTimer, HideTaskbarTimer, -1500
return
