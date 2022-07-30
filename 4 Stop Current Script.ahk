#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
menu, tray, icon, 4.ico, 

^f1::
send, {home}
;reload scripts
DetectHiddenWindows On  ; Allows a script's hidden main window to be detected.
SetTitleMatchMode 2  ; Avoids the need to specify the full path of the file below.
PostMessage, 0x111, 65303,,, 1 Hiveswap Act 1 Part 1.ahk - AutoHotkey ;reloads
postmessage, 0x111, 65303,,, 2 Hiveswap Act 1 Part 2.ahk - AutoHotkey
postmessage, 0x111, 65303,,, 3 Hiveswap Act 1 Part 3.ahk - AutoHotkey
postmessage, 0x111, 65303,,, Consistent Testing.ahk - AutoHotkey
postmessage, 0x111, 65303,,, Move Files.ahk - AutoHotkey


;end of current play
soundplay, Duck.mp3
return