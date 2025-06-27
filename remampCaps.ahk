SetCapsLockState, AlwaysOff ; Keeps Caps Lock off by default

^CapsLock:: ; Ctrl + Caps Lock to toggle Caps Lock
SetCapsLockState, % GetKeyState("CapsLock", "T") ? "Off" : "On"
return
