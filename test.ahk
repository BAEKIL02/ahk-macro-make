#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




sleep, 3333




�׽�Ʈ���� = plokij001a
StringLen, ���ڼ�, �׽�Ʈ����
loop, %���ڼ�%
{
	StringMid, ���ù���, �׽�Ʈ����, A_Index, 1
	random, rn, 200, 500
	sleep, %rn%
	if(���ù��� == "-")
	{
	Send, {NumpadSub}
	goto, j4
	}
	Send, {%���ù���%}
j4:
}


sleep, 1111
send, {tab}
sleep, 1111
�׽�Ʈ���� = kmjnkmjn
StringLen, ���ڼ�, �׽�Ʈ����
loop, %���ڼ�%
{
	StringMid, ���ù���, �׽�Ʈ����, A_Index, 1
	random, rn, 200, 500
	sleep, %rn%
	if(���ù��� == "-")
	{
	Send, {NumpadSub}
	goto, j5
	}
	Send, {%���ù���%}
j5:
}

sleep, 1111
send,{enter}











Goto, GuiClose ; ���� �̵�


GuiClose: 

ExitApp