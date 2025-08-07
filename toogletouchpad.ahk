; Ctrl+Shift+[ = Disable Touchpad
^+[::
Run *RunAs "C:\Tools\DevManView\DevManView.exe" /disable "HID-compliant touch pad"
TrayTip, Touchpad Disabled, The touchpad has been disabled., , 16
return

; Ctrl+Shift+] = Enable Touchpad
^+]::
Run *RunAs "C:\Tools\DevManView\DevManView.exe" /enable "HID-compliant touch pad"
TrayTip, Touchpad Enabled, The touchpad has been enabled., , 64
return

