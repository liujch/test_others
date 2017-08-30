#AutoIt3Wrapper_run_debug_mode=Y
;~ #include <MsgBoxConstants.au3>
;~ #include <Array.au3>
HotKeySet("{F4}", "myexit")

Func myexit()
	Exit
EndFunc   ;==>myexit

Global $Paused
Global $a = 0
HotKeySet("^p", "TogglePause")
;~ HotKeySet("{Esc}", "Terminate")

While 1
	Do
;~ 		If $a < 4 Then



;~ For 1 To 4
		; 按键延时
;~ SendStr('2',10)
;~ Sendstr('{SPACE}',100)

;~ Func Sendstr($istr,$idelay)
;~     Opt('SendKeyDownDelay',$idelay)
;~     Send ($istr)
;~ EndFunc
		;;进入比赛
		Sleep(800)
		MouseClick("left", 805, 45, 1, 1)
		Sleep(800)
		MouseClick("left", 200, 350, 1, 2)
;~ MsgBox (0,@error,"debug1")

		Sleep(700)
		MouseClick("left", 631, 637, 1, 1)
		MouseClick("left")
		Sleep(700)
		MouseClick("left")
		Sleep(700)
		MouseClick("left")
		Sleep(700)
		MouseClick("left")
;~ ;判断比赛开始
;~ Rem OP
		Sleep(8000)
;~ FindColor 0,0,100,100,"10BDEC",intX,intY
;~ If intX <1 And intY < 1 Then
;~ Goto OP
;~ End If

;~ @error = 1
;~ dim $aCoord[2] = [0,0]
;~ Do
;~  sleep (8)
;~ ; Find a pure blue pixel in the range 0,0-100,100
;~ $aCoord = PixelSearch( 0, 0, 100, 100, 0x10BDEC )
;~ Until $aCoord <> 1
;~ Until $aCoord[0] <> "0"

		$findcolor = 0
		Do
			Sleep(8)
			; Find a pure blue pixel in the range 0,0-100,100
			$aCoord = PixelSearch(0, 0, 100, 100, 0xeccf16, 10, 2)

;~ If Not @error Then
;~     MsgBox($MB_SYSTEMMODAL, "", "X and Y are: " & $aCoord[0] & "," & $aCoord[1])
;~  EndIf

			If IsArray($aCoord) Then

				;do whatever bc it was successful
				$findcolor = 1
			Else

				;  do whatever not successful no color found
				$findcolor = 0
			EndIf
		Until $findcolor = 1
		Sleep(10)
;~ MsgBox($MB_SYSTEMMODAL, "", "X and Y are: " & $aCoord[0] & "," & $aCoord[1])
;~ ;起步
		Opt("SendKeyDownDelay", 100)
		Send("{SPACE}")
;~ send ("{space}")
;~ sleep (100)
;~ KeyUp "Space", 1
		Sleep(100)
		Opt("SendKeyDownDelay", 135)
		Send("{LEFT}")
		Sleep(780)
		Opt("SendKeyDownDelay", 100)
		Send("{SPACE}")
		Sleep(1400)
		Opt("SendKeyDownDelay", 5600)
		Send("{LEFT}")
		Sleep(800)
;~ ;第一次右转
		Opt("SendKeyDownDelay", 305)
		Send("{RIGHT}")
		Sleep(1600)
		Opt("SendKeyDownDelay", 12100)
		Send("{RIGHT}")
;~ ;第一次左转调整
		Sleep(600)
		Opt("SendKeyDownDelay", 500)
		Send("{RIGHT}")
		Sleep(1000)
;~ ;第一次左转
		Opt("SendKeyDownDelay", 29500)
		Send("{LEFT}")
;~ KeyUp "Left", 1
		Sleep(200)
		Opt("SendKeyDownDelay", 200)
		Send("{LEFT}")
		Sleep(180)
		Opt("SendKeyDownDelay", 100)
		Send("{LEFT}")
		Sleep(100)

;~ ;第二次右转调整
		Opt("SendKeyDownDelay", 150)
		Send("{RIGHT}")
		Sleep(900)
		Opt("SendKeyDownDelay", 300)
		Send("{RIGHT}")
		; Sleep (300)
;~ KeyUp "Right", 1
		Sleep(300)
		Send("{RIGHT}")
		; Sleep (300)
;~ KeyUp "Right", 1
		Sleep(100)

;~ ;第二次右转
		Opt("SendKeyDownDelay", 2000)
		Send("{RIGHT}")
		; Sleep (2000
;~ KeyUp "Right", 1
		Sleep(200)
		Opt("SendKeyDownDelay", 300)
		Send("{RIGHT}")

;~ ;终点前加速
;~ 		Sendstr('{SPACE}', 100)
		Sleep(100)
;~ KeyUp "Space", 1
		Sleep(50)
;~ 		Send("{SPACE}")
		; Sleep (100
;~ KeyUp "Space", 1
		Sleep(50)
;~ 		Send("{SPACE}")
		; Sleep (100
;~ KeyUp "Space", 1
		Sleep(5000)

;~ ;结束画面
;~ FindColor 548,564,830,674,"C4BA9F",intX,intY
;~ While (intX < 1)
		; Sleep (1000
;~ FindColor 548,564,830,674,"C4BA9F",intX,intY
;~ Wend
		; Sleep 500
;~ MouseClick("left", intX, intY
		$findcolor = 0

;~ 		Do
;~ 			Sleep(50)
;~ 			; Find a pure  pixel in the range 0,0-100,100
;~ 			$aCoord = PixelSearch(548, 564, 830, 674, "0xC4BA9F", 10, 2)
;~ 			If Not @error Then
;~ 		MsgBox($MB_SYSTEMMODAL, "", "X and Y are: " & $aCoord[0] & "," & $aCoord[1])
;~ 				$findcolor = 1

;~  If isarray  ($aCoord)  then
;~ 				;do whatever bc it was successful
;~ 		$findcolor = 1
;~ 				;  do whatever not successful no color found
;~ 			EndIf
;~ 		Until $findcolor = 1
		$iflose = 0
		finish()

;~ a = 0
;~ b = 0
;~ c=0
;~ FindCenterColor 50,50,50,50,"000000",intX,intY
;~ If intX > 0 And intY > 0 Then
;~ a = 1
;~ End If
		; Sleep 200
;~ FindCenterColor 315,57,315,57,"000000",intX,intY
;~ If intX > 0 And intY > 0 Then
;~ b = 1
		; Sleep 200
;~ End If
;~ FindCenterColor 210,67,210,67,"000000",intX,intY
;~ If intX > 0 And intY > 0 Then
;~ c = 1
		; Sleep 400
;~ End If

;~ If a = 1 and b = 1 and c = 1 Then
;~ MouseClick("left")
		; Sleep 500

		; Sleep 1000
;~ MouseClick("left")
		; Sleep 1000
;~ MouseClick("left")
;~ End If
;~ Goto Store
		;如果到最后被淘汰

		If $iflose = 0 Then
			win()
		EndIf

;~ 		finish()



		;杩斿洖璧涘鑿滃崟
;~ 		$saiji = 0
;~ 		While $saiji = 0
;~ 			Sleep(32)
		;鍒ゆ柇璐拱鎻愮ず
;~ 			Sleep(50)
		; Find a pure  pixel in the range 0,0-100,100
;~ 			$aCoord = PixelSearch(0, 0, 700, 700, "0x7B976", 10, 2)
;~ 			If IsArray($aCoord) Then
;~ 				Sendstr('{esc}', 100)
;~ 				$saiji = 1
;~ 			Else

		;鍒ゆ柇璧涘鑿滃崟

;~ 				$bCoord = PixelSearch(0, 560, 300, 700, "0x196FE", 10, 2)
;~ 			EndIf
;~ 			If IsArray($bCoord) Then
;~ 				$saiji = 1
;~ 			EndIf
;~ 		WEnd

;~ Next
		$a = $a + 1
;~ 	Else
;~ 		Terminate()
;~ 	EndIf
	Until $a >= 600

WEnd

Func Terminate()
	Exit 0
EndFunc   ;==>Terminate

Func TogglePause()
	$Paused = Not $Paused
	While $Paused
		Sleep(100)
		ToolTip('????', 0, 0)
	WEnd
	ToolTip("")
EndFunc   ;==>TogglePause
Func Sendstr($istr, $idelay)
	Opt('SendKeyDownDelay', $idelay)
	Send($istr)
EndFunc   ;==>Sendstr


Func finish()
	$d = 0
	;	$iflose = 0
;~ 			While 1
;~ 				If $a < 4 Then
	Do
;~ 				For 1 To 5
		$a1 = 0
		$b1 = 0
		$c1 = 0
		;find colors
		$aCoord = PixelSearch(50, 50, 50, 50, "000000", 10, 2)
		If Not @error Then
			$a1 = 1
		EndIf
		Sleep(1000)
		$aCoord = PixelSearch(315, 57, 315, 57, "000000", 10, 2)
		If Not @error Then
			$b1 = 1
		EndIf
		Sleep(200)
		$aCoord = PixelSearch(210, 67, 210, 67, "000000", 10, 2)
		If Not @error Then
			$c1 = 1
			Sleep(400)
		EndIf
		Sleep(2000)
		If $a1 = 1 And $b1 = 1 And $c1 = 1 Then

			MouseClick("left", 656, 611)
			ExitLoop
		EndIf
;~ 				Next
;~ 				$findcolor2 = 0
;~ 				$findcolor3 = 0
;~ 		Do
;~ 				Sleep(50)
;~ 				$aCoord = PixelSearch(548, 564, 830, 674, "0xfdfdfd", 10)
;~ 				If Not @error Then
;~ 					$findcolor = 1
;~ 				EndIf
;~ 				Sleep(100)
;~ 				$aCoord = PixelSearch(548, 564, 830, 674, 0x9fbac4, 10)
;~ 				If Not @error Then
;~ 					$findcolor1 = 1
;~ 				EndIf
;~ 				If $findcolor2 = 1 And $findcolor3 = 1 Then
;~ 					MouseClick("left", $aCoord[0], $aCoord[1], 1)
;~ 					MsgBox($MB_SYSTEMMODAL, "", "X and Y are: " & $findcolor2[0] & "," & $findcolor2[1])
;~ 					Sleep(70000)
;~ 					ExitLoop
;~ 				Else
;~ 					MsgBox($MB_SYSTEMMODAL, "", "X and Y are: " & $findcolor2[0] & "," & $findcolor2[1])
;~ 					Sleep(70000)
;~ 					lose()
;~ 				EndIf

;~ 		Until $findcolor = 1 And $findcolor1 = 1
		$d = $d + 1
;~ 				EndIf
	Until $d >= 4
;~ 			WEnd
	;如果没有找到
;~ 		If $findcolor2 = 0 Or $findcolor3 = 0 Then
	If $a1 <> 1 Or $b1 <> 1 Or $c1 <> 1 Then
		lose()
	EndIf
EndFunc   ;==>finish

Func win()
;~ ;判断刷新时间记录
	; Sleep 500
;~ FindColorEx 50,600,280,640,"DD8A0C",0,0.9,intX,intY
;~ If intX > 0 And intY > 0 Then
;~ MouseClick("left")
;~ End If
	$findcolor = 0
	Sleep(500)

	Sleep(50)
	; Find a pure  pixel in the range 0,0-100,100
	$aCoord = PixelSearch(50, 600, 280, 640, "0xDD8A0C", 10, 2)
	If Not @error Then
		MouseClick("left")
	EndIf

	MouseClick("LEFT")

	; Sleep 500
;~ MouseClick("left")
	; Sleep 1000
;~ MouseClick("left")
	; Sleep 1700
;~ MouseClick("left")
	; Sleep 6000
;~ ;返回赛季菜单
;~ Rem Store
	; Sleep 32
;~ ;判断购买提示
;~ FindColor 0,0,700,700,"7B976",intX,intY
;~ If intX > 0 And intY > 0 Then
;~ KeyDown "Esc", 1
	; Sleep 300
;~ KeyUp "Esc", 1
;~ Else
;~ ;判断赛季菜单
;~ FindColor 0,560,300,700,"196FE",intX,intY
;~ If intX < 1 And intY < 1 Then
;~ Goto Store
;~ End If
	Sleep(500)
	MouseClick("LEFT")
	Sleep(1000)
	MouseClick("LEFT")
	Sleep(1700)
	MouseClick("LEFT")
	Sleep(1700)
	MouseClick("LEFT")
	Sleep(6000)
EndFunc   ;==>win

Func lose()
;~ 			MsgBox(0, "", "被淘汰！")
	Sleep(1000)
	Sendstr('{esc}', 100)
	Sleep(1000)
	MouseClick("LEFT", 160, 530)
	Sleep(1000)
	MouseClick("LEFT", 580, 490)
	Sleep(5000)
	$iflose = 1
	;			ContinueLoop
;~ 				Do
;~ 					$a = 0
;~ 					$b = 0
;~ 					$c = 0
;~ 					$aCoord = PixelSearch(50, 50, 50, 50, "000000", 10, 2)
;~ 					If Not @error Then
;~ 						$a = 1
;~ 					EndIf
;~ 					Sleep(200)
;~ 					$aCoord = PixelSearch(315, 57, 315, 57, "000000", 10, 2)
;~ 					If Not @error Then
;~ 						$b = 1
;~ 					EndIf
;~ 					Sleep(200)
;~ 					$aCoord = PixelSearch(210, 67, 210, 67, "000000", 10, 2)
;~ 					If Not @error Then
;~ 						$c = 1
;~ 						Sleep(400)
;~ 					EndIf
;~ 				Until a = 1 And b = 1 And c = 1
;~ 				MouseClick("left", 656, 611)
;~ 				Sleep(8000)
EndFunc   ;==>lose


