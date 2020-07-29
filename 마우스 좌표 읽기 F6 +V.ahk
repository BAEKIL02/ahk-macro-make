#NoEnv ; 변수명을 해석할 때, 환경 변수를 무시한다
#SingleInstance force ; 같은 스크립트의 다중 프로세스로 실행의 금지/허가설정
#KeyHistory 0
SetBatchLines, -1
ListLines, Off
Process, Priority,, High
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
SetTitleMatchMode, 1


F6::
MouseGetpos, vx, vy
clipboard := vx
clipboard .= ","
clipboard .= vy
clipboard .= ","
return

