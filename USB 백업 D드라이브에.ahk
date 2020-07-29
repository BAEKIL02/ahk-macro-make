



; 해당 usb 내 1.txt 파일로 구분



j1:

FormatTime, CurrentDateTime,, _yyyyMMdd  ; It will look like 20050918-1553


usbdrive := d,e,f,g,h,i,j,k,l,m
StringSplit, usbArray, usbdrive, `,

Loop, %usbArray0%
{
	this_usb := usbArray%a_index%
	ifexist, %this_usb%:\1.txt
	
	{
	; 할일
	FileCopyDir, %this_usb%:\기계값관리 전체, D:\USB BACK UP\%CurrentDateTime%

		loop
		{
			ifnotexist, %this_usb%:\1.txt
			{
				goto, j1
			}
		 	sleep, 3333
		}
		
	}

	sleep, 3333
}

goto, j1



return