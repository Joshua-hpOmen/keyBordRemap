<^t::
    If WinActive("ahk_exe WindowsTerminal.exe")  ; If Terminal is active
        WinMinimize  ; Minimize it
    Else If WinExist("ahk_exe WindowsTerminal.exe")  ; If Terminal is open but not active
        WinActivate  ; Bring it to the front
    Else
        Run "wt.exe"  ; Open Terminal if not running
return

<^+t::
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

^+y::
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
        Run "C:\Users\USER-PC\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk"  ; Open VS Code
return

^!+e::
    Run, "C:\Users\USER-PC\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk"  ; Open VS Code
return

CapsLock::Control

<RShift::Escape

^+g:: ; ^-control, + - shift, t - the key
    Run "msedge.exe"
Return

ScrollLock::Shutdown, 2
Pause::Shutdown, 1  ; Shutdown immediately when Pause is pressed

F8::
    SetTitleMatchMode, 2
    if WinActive("Calculator")
        WinMinimize
    else if WinExist("Calculator")
        WinActivate
    else
        Run, calc.exe
return


+F8::
    Run, "calc.exe"
return
F7::
    SetTitleMatchMode, 2
    if WinActive("File Explorer")
        WinMinimize
    else if WinExist("File Explorer")
        WinActivate
    else
        Run, explorer.exe
return


+F7::
    Run, "explorer.exe"
return

F10::
    Run, "C:\Users\USER-PC\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk"  ; Open VS Code
    Run "msedge.exe"  ; Open Edge if it's not running
return

Del::Shift