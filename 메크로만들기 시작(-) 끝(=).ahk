#SingleInstance force ; ���� ��ũ��Ʈ�� ���� ���μ����� ������ ����/�㰡����
SetBatchLines, -1
ListLines, Off
Process, Priority,, High
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
SetTitleMatchMode, 1



#include Gdip_All.ahk



-::
FormatTime, CurrentDateTime1,, yyyyMMddHHmmss  ; It will look like 20050918-1553
FormatTime, CurrentDateTime2,, yyyyMMdd  ; It will look like 20050918-1553
pToken := Gdip_StartUp()

vx1 := "" ; ����
vy1 := "" ; ����
MouseGetpos, vx1, vy1
clipboard := vx1
clipboard .= ","
clipboard .= vy1
clipboard .= ","

return


=::
vx2 := "" ; �ʺ�
vy2 := "" ; ����
MouseGetpos, vx2, vy2
clipboard .= vx2
clipboard .= ","
clipboard .= vy2
clipboard .= ","
vx2 := vx2-vx1
vy2 := vy2-vy1

pBitmap := Gdip_BitmapFromScreen(vx1 "|" vy1 "|" vx2 "|" vy2)
Gdip_SaveBitmapToFile(pBitmap, CurrentDateTime1 ".png")
msgbox,,, %vx1% %vy1% %vx2% %vy2%,1
vx1 := vx1-10
vy1 := vy1-10
vx2 := vx2+10
vy2 := vy2+10



FileAppend,
(

loop 11 ; 
{
	ImageSearch, vx, vy, %clipboard% *55 image\%CurrentDateTime1%.png
	If ErrorLevel = 0
	{
		mouse1(vx,vy)
		goto, %CurrentDateTime1%
	}
	sleep, 1111
}
goto, start1
%CurrentDateTime1%:

),%A_ScriptDir%\macrosave%CurrentDateTime2%.ahk

Gdip_DisposeImage(pBitmap)
Gdip_Shutdown(pToken)

return





