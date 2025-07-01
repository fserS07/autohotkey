#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
DetectHiddenWindows, On

taskbar := WinExist("ahk_class Shell_TrayWnd")

; Hide taskbar at startup
HideTaskbar()

~RWin::
    InputHook := InputHook("L1 T0.15")
    InputHook.KeyOpt("{All}", "E")
    InputHook.Start()
    InputHook.Wait()

    if (InputHook.EndReason = "Timeout")
        ToggleTaskbar()
return

ToggleTaskbar() {
    global taskbar
    WinGet, Style, Style, ahk_id %taskbar%
    ; Check visibility by style (WS_VISIBLE = 0x10000000)
    if (Style & 0x10000000) {
        HideTaskbar()
    } else {
        ShowTaskbar()
    }
}

HideTaskbar() {
    global taskbar
    WinHide, ahk_id %taskbar%
    WinSet, Disable,, ahk_id %taskbar%
}

ShowTaskbar() {
    global taskbar
    WinShow, ahk_id %taskbar%
    WinSet, Enable,, ahk_id %taskbar%
}
