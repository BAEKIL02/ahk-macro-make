#SingleInstance force; 같은 규모의 다중 프로세스로 실행의 금지 / 허가 설정  수정용
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

vx1 := "" ; 가로
vy1 := "" ; 세로
MouseGetpos, vx1, vy1
clipboard := vx1
clipboard .= ","
clipboard .= vy1
clipboard .= ","

return


=::
vx2 := "" ; 너비
vy2 := "" ; 높이
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
vx1 := vx1-33
vy1 := vy1-33
vx2 := vx2+33
vy2 := vy2+33



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
goto, start1 ; 시작지점으로 돌아갑니다. 시작지점 필요한것 : 초기화 작업
%CurrentDateTime1%:

),%A_ScriptDir%\macrosave%CurrentDateTime2%.ahk

Gdip_DisposeImage(pBitmap)
Gdip_Shutdown(pToken)

return





