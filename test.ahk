#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




sleep, 3333




테스트문자 = plokij001a
StringLen, 문자수, 테스트문자
loop, %문자수%
{
	StringMid, 선택문자, 테스트문자, A_Index, 1
	random, rn, 200, 500
	sleep, %rn%
	if(선택문자 == "-")
	{
	Send, {NumpadSub}
	goto, j4
	}
	Send, {%선택문자%}
j4:
}


sleep, 1111
send, {tab}
sleep, 1111
테스트문자 = kmjnkmjn
StringLen, 문자수, 테스트문자
loop, %문자수%
{
	StringMid, 선택문자, 테스트문자, A_Index, 1
	random, rn, 200, 500
	sleep, %rn%
	if(선택문자 == "-")
	{
	Send, {NumpadSub}
	goto, j5
	}
	Send, {%선택문자%}
j5:
}

sleep, 1111
send,{enter}











Goto, GuiClose ; 종료 이동


GuiClose: 

ExitApp