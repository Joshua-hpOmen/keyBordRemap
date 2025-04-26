<^t::
    If WinActive("ahk_exe WindowsTerminal.exe")  ; If Terminal is active
        WinMinimize  ; Minimize it
    Else If WinExist("ahk_exe WindowsTerminal.exe")  ; If Terminal is open but not active
        WinActivate  ; Bring it to the front
    Else
        Run "wt.exe"  ; Open Terminal if not running
return



; Define YouTube PWA executable line correctly (use a string)


; Ctrl+Y to toggle YouTube
^y::
    ; We use WinTitle-based matching; "ahk_exe" won't work with command-line strings
    SetTitleMatchMode, 2  ; Allow partial match in window titles (important)
    
    If WinActive("YouTube")  ; Assuming the window title contains "YouTube"
        WinMinimize
    Else If WinExist("YouTube")
        WinActivate
    Else
        Run, "C:\Program Files (x86)\Microsoft\Edge\Application\msedge_proxy.exe" --profile-directory=Default --app-id=agimnkijcaahngcdmfeangaknmldooml --app-url=https://www.youtube.com/?feature=ytca --app-launch-source=4
return

^g::  ; Win + B hotkey
    If WinActive("ahk_exe msedge.exe")  ; If Edge is the active window
        WinMinimize  ; Minimize it
    Else If WinExist("ahk_exe msedge.exe")  ; If Edge is open but not active
        WinActivate  ; Bring it to the front
    Else
        Run "msedge.exe"  ; Open Edge if it's not running
return

^!e::  ; Control + Alt + E
    if WinActive("ahk_exe Code.exe")  ; If VS Code is active
        WinMinimize  ; Minimize it
    else if WinExist("ahk_exe Code.exe")  ; If VS Code is open but not active
        WinActivate  ; Bring it to the front
    else
        Run "C:\Users\esu\AppData\Local\Programs\Microsoft VS Code\Code.exe"  ; Open VS Code
return

^!+e::
    Run "C:\Users\esu\AppData\Local\Programs\Microsoft VS Code\Code.exe"  ; Open VS Code


CapsLock::Control

<RShift::Escape

^+g:: ; ^-control, + - shift, t - the key
    Run "msedge.exe"
