#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; MacOS-like shortcuts ; Remap [Cmd/Alt]+[C/S/V/X/Y/Z] -> Ctrl+[C/S/V/X/Y/Z]
LAlt & c::
    Send {CtrlDown}c
    Keywait LAlt
    Send {CtrlUp}
    return

LAlt & s::
    Send {CtrlDown}s
    ; Wait for s to release
    Keywait s
    Send {CtrlUp}
    return

LAlt & v::
    Send {CtrlDown}v
    Keywait LAlt
    Send {CtrlUp}
    return

LAlt & x::
    Send {CtrlDown}x
    Keywait LAlt
    Send {CtrlUp}
    return

LAlt & y::
    Send {CtrlDown}y
    Keywait LAlt
    Send {CtrlUp}
    return

LAlt & z::
    Send {CtrlDown}z
    ; Wait for z to release
    Keywait z
    Send {CtrlUp}
    return

LAlt & /::
    Send {CtrlDown}/
    Keywait LAlt
    Send {CtrlUp}
    return

LAlt & a::
    Send {CtrlDown}a
    Keywait LAlt
    Send {CtrlUp}
    return

LAlt & r::
    Send {CtrlDown}r
    Keywait LAlt
    Send {CtrlUp}
    return

LAlt & t::
    Send {CtrlDown}t
    Keywait LAlt
    Send {CtrlUp}
    return

LAlt & f::
    Send {CtrlDown}f
    Keywait LAlt
    Send {CtrlUp}
    return

LAlt & w::
    Send {CtrlDown}w
    Keywait LAlt
    Send {CtrlUp}
    return

LAlt & n::
    Send {CtrlDown}n
    Keywait LAlt
    Send {CtrlUp}
    return

LAlt & p::
    Send {CtrlDown}p
    Keywait LAlt
    Send {CtrlUp}
    return

LAlt & Left::
    Send {Home}
    Keywait Left
    return

LAlt & Right::
    Send {End}
    Keywait LAlt
    return

; Simulate CMD + SHIFT + N (i.e. to open an incognito window)
; Press AppsKey and Alt in any order, then slash (/).
#if GetKeyState("LAlt", "P")
LShift & n::
    Send {CtrlDown}{ShiftDown}n
    Keywait LAlt
    Send {CtrlUp}{ShiftUp}
    return

#if GetKeyState("LAlt", "P")
LShift & t::
    Send {CtrlDown}{ShiftDown}t
    Keywait LAlt
    Send {CtrlUp}{ShiftUp}
    return

#if GetKeyState("LAlt", "P")
LShift & z::
    Send {CtrlDown}{ShiftDown}z
    Keywait LAlt
    Send {CtrlUp}{ShiftUp}
    return

#if GetKeyState("LAlt", "P")
LShift & f::
    Send {CtrlDown}{ShiftDown}f
    Keywait LAlt
    Send {CtrlUp}{ShiftUp}
    return

#if GetKeyState("LAlt", "P")
LShift & p::
    Send {CtrlDown}{ShiftDown}p
    Keywait LAlt
    Send {CtrlUp}{ShiftUp}
    return

#if GetKeyState("LAlt", "P")
LShift & Left::
    Send {LShift down}{Home}
    Keywait Left
    Send {LShift up}
    return

#if GetKeyState("LAlt", "P")
LShift & Right::
    Send {LShift down}{End}
    Keywait Right
    Send {LShift up}
    return

; Open Task View ; Remap Ctrl-Up -> Win-Tab
; Adapted from https://www.autohotkey.com/boards/viewtopic.php?t=70379
Ctrl & Up::
    Send {LWinDown}{Tab}
    Keywait Ctrl
    Send {LWinUp}
    return

; -- Gaming remaps

; Remap CapsLock -> Alt unless Shift is held
+CapsLock::CapsLock
CapsLock::Alt

; Nvidia Geforce Overlay ; Remap Win+Z -> Alt+Z
LWin & z::
    Send {AltDown}z
    Keywait LWin
    Send {AltUp}
    return

; Call of Duty: Remap LWinDown to Alt (closer to previous Mac keyboard)
; TODO
#IfWinActive, ahk_exe ModernWarfare.exe
    ^j:: MsgBox, Found COD Warfare!
    return

; Apex Legends 
#IfWinActive, ahk_exe r5apex.exe
    ^j:: MsgBox, Found Apex!
    return

; -- Coding remaps

; TODO: Shortcut to select the whole line (combination of Home and End or simulate triple click at cursor)
; TODO: VSCode - go to last/next edit point (CMD+[ and CMD+] on MacOS for me)

; #IfWinActive, ahk_exe Code.exe
; LWin::
;     Send {AltDown}
;     Keywait LWin
;     Send {AltUp}
;     return

; -- Resources

; https://www.autohotkey.com/docs/misc/Remap.htm
; https://autohotkey.com/board/topic/83948-how-to-remap-win-key-and-retain-win-key-other-key-combos/
; https://autohotkey.com/board/topic/124519-remapping-key-without-overriding-hotkeys/