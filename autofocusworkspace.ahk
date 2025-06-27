; Listen for workspace switches (Win+Ctrl+Left or Right)

;#RequireAdmin
Sleep, 1000  ; wait 5 seconds before doing anything
TrayTip, Script Loaded, Autofocus script is running., 5

#^Left::
#^Right::
    ; Send the workspace switch keys as normal
    Send, #%A_ThisHotkey%
    Sleep, 100  ; short delay to let the desktop switch happen

    ; Get the ID of the last active window on the current desktop
    WinGet, id, ID, A
    if id
    {
        ; Activate the last active window to focus it
        WinActivate, ahk_id %id%
    }
return
