#NoEnv ; �������� �ؼ��� ��, ȯ�� ������ �����Ѵ�
#SingleInstance force ; ���� ��ũ��Ʈ�� ���� ���μ����� ������ ����/�㰡����
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

