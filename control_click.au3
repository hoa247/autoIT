
; Tọa độ lấy bằng spy++ trong visual studio

Func _MouseClick($hwnd, $x, $y, $button)
	$lparam = ($y * 65536) + ($x)
	Switch $button
		Case $button='Left Click'
			_SendMessage($hwnd, $WM_MOUSEMOVE, 0,$lparam)
			Sleep(100)
            _WinAPI_PostMessage($hwnd, 0x201, 0x1,$lParam)
            _WinAPI_PostMessage($hwnd, 0x202, 0,$lParam)
        Case $button='Left Double Click'
            _WinAPI_PostMessage($hwnd, 0x201, 0x1,$lParam)
            _WinAPI_PostMessage($hwnd, 0x202, 0,$lParam)
            _WinAPI_PostMessage($hwnd, 0x203, 0x1,$lParam)
            _WinAPI_PostMessage($hwnd, 0x202, 0,$lParam)
        Case $button='Middle Click'
            _WinAPI_PostMessage($hwnd, 0x207, 0x10,$lParam)
            _WinAPI_PostMessage($hwnd, 0x208, 0,$lParam)
        Case $button='Middle Double Click'
            _WinAPI_PostMessage($hwnd, 0x207, 0x10,$lParam)
            _WinAPI_PostMessage($hwnd, 0x208, 0,$lParam)
            _WinAPI_PostMessage($hwnd, 0x209, 0x10,$lParam)
            _WinAPI_PostMessage($hwnd, 0x208, 0,$lParam)
        Case $button='Right Click'
			_SendMessage($hwnd, $WM_MOUSEMOVE, 0,$lparam)
			Sleep(100)
            _WinAPI_PostMessage($hwnd, 0x204, 0x2,$lParam)
            _WinAPI_PostMessage($hwnd, 0x205, 0,$lParam)
        Case $button='Right Double Click'
            _WinAPI_PostMessage($hwnd, 0x204, 0x2,$lParam)
            _WinAPI_PostMessage($hwnd, 0x205, 0,$lParam)
            _WinAPI_PostMessage($hwnd, 0x206, 0x2,$lParam)
            _WinAPI_PostMessage($hwnd, 0x205, 0,$lParam)
	EndSwitch
EndFunc