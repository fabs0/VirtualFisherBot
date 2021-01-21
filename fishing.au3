#cs ----------------------------------------------------------------------------

 SKULLFISHER

 AutoIt Version: 		0.3
 Author:         		fabs

 Script Function:
	Fishing Bot for "Virtual Fisher"

 Update Log:
 ver. 0.3:
   - added basic logging function (still unstable)
   - added automatic selling on fish

 ver. 0.2:
   - added image detection feature for anti bot measures

#ce ----------------------------------------------------------------------------



; ############## Customize your Bot here #################

$hotkeystart = "{NUMPAD8}"                      ; Hot Key to start bot
$hotkeypause = "{NUMPAD5}"                      ; Hot Key to pause bot
$hotkeystop = "{NUMPAD2}"                       ; Hot Key to stop bot


$sellafter = 20                        ; Sell after fishing X times

$strength


$selleverything = True                    ; True if you want to sell everything

$sellsalmons = False                    ; True if you want to sell raw salmons
$sellcods = False                        ; True if you want to sell Cods
$selltropical = False                    ; True if you want to sell Tropical Fish


$antibotpath = "antibot.bmp"            ; Anti Bot Image
$alarmsound = "ding.wav"                ; Alarm Sound (ding.wav, donke.wav, donkerape.wav)
$logpath = "log/log.txt"				; Logging File


; ############## Don't edit below this line ###############



#include <AutoItConstants.au3>
#include <ImageSearch.au3>
#include <FileConstants.au3>
#include <Date.au3>

$x1 = 0
$y1 = 0

$c = 0
$tempstr = " "

HotKeySet($hotkeystart, "start")
HotKeySet($hotkeypause, "stop")
HotKeySet($hotkeystop, "ende")

Func stop()
	While 1
	  $tempstr = _NowTime(4) + " Bot Paused"
	   FileWrite($logfile, $tempstr & @CRLF)
		Sleep(100)
	WEnd
EndFunc   ;==>stop

Func ende()
    $tempstr = _NowTime(4) + " Bot Ended"
    FileWrite($logfile, $tempstr & @CRLF)
	FileClose($logfile)
	Exit
EndFunc   ;==>ende

Func antibot()
	While 1
		SoundPlay($alarmsound, 1)
	WEnd
EndFunc   ;==>antibot

Func start()
   $tempstr = _NowTime(4) + " Bot Started"
	FileWrite($logfile, $tempstr & @CRLF)
	While 1
		$result = _ImageSearch($antibotpath, 1, $x1, $y1, 0)
		If $result = 1 Then
		   $tempstr = _NowTime(4) + " Anti-Bot measure was called."
		   FileWrite($logfile, $tempstr & @CRLF)
			antibot()
			$tempstr = _NowTime(4) + " Anti-Bot measure was verified."
			FileWrite($logfile, $tempstr & @CRLF)
		EndIf
		If $c = $sellafter Then
			$c = 0
			If $selleverything Then
				Sleep(Random(92, 114, 1))
				Send("%")
				Sleep(Random(88, 114, 1))
				Send("s")
				Sleep(Random(95, 114, 1))
				Send("e")
				Sleep(Random(91, 114, 1))
				Send("l")
				Sleep(Random(92, 114, 1))
				Send("l")
				Sleep(Random(92, 114, 1))
				Send(" ")
				Sleep(Random(88, 114, 1))
				Send("a")
				Sleep(Random(95, 114, 1))
				Send("l")
				Sleep(Random(91, 114, 1))
				Send("l")
				Sleep(Random(94, 114, 1))
				Send("{ENTER}")
				$tempstr = _NowTime(4) + " Sold all Fish"
					FileWrite($logfile, $tempstr & @CRLF)
			Else
				If $sellsalmons Then
					Sleep(Random(92, 114, 1))
					Send("%")
					Sleep(Random(88, 114, 1))
					Send("s")
					Sleep(Random(95, 114, 1))
					Send("e")
					Sleep(Random(91, 114, 1))
					Send("l")
					Sleep(Random(92, 114, 1))
					Send("l")
					Sleep(Random(92, 114, 1))
					Send(" ")
					Sleep(Random(88, 114, 1))
					Send("a")
					Sleep(Random(95, 114, 1))
					Send("l")
					Sleep(Random(91, 114, 1))
					Send("l")
					Sleep(Random(92, 114, 1))
					Send(" ")
					Sleep(Random(88, 114, 1))
					Send("R")
					Sleep(Random(95, 114, 1))
					Send("a")
					Sleep(Random(91, 114, 1))
					Send("w")
					Sleep(Random(92, 114, 1))
					Send(" ")
					Sleep(Random(88, 114, 1))
					Send("S")
					Sleep(Random(92, 114, 1))
					Send("a")
					Sleep(Random(88, 114, 1))
					Send("l")
					Sleep(Random(95, 114, 1))
					Send("m")
					Sleep(Random(91, 114, 1))
					Send("o")
					Sleep(Random(92, 114, 1))
					Send("n")
					Sleep(Random(94, 114, 1))
					Send("{ENTER}")
					$tempstr = _NowTime(4) + " Sold all Raw Salmons"
					FileWrite($logfile, $tempstr & @CRLF)
				EndIf
				 sleep(700)
				If $sellcods Then
					Sleep(Random(92, 114, 1))
					Send("%")
					Sleep(Random(88, 114, 1))
					Send("s")
					Sleep(Random(95, 114, 1))
					Send("e")
					Sleep(Random(91, 114, 1))
					Send("l")
					Sleep(Random(92, 114, 1))
					Send("l")
					Sleep(Random(92, 114, 1))
					Send(" ")
					Sleep(Random(88, 114, 1))
					Send("a")
					Sleep(Random(95, 114, 1))
					Send("l")
					Sleep(Random(91, 114, 1))
					Send("l")
					Sleep(Random(92, 114, 1))
					Send(" ")
					Sleep(Random(88, 114, 1))
					Send("C")
					Sleep(Random(95, 114, 1))
					Send("o")
					Sleep(Random(91, 114, 1))
					Send("d")
					Send("{ENTER}")
					$tempstr = _NowTime(4) + " Sold all Cods"
					FileWrite($logfile, $tempstr & @CRLF)
				 EndIf
				 sleep(700)
				If $selltropical Then
					Sleep(Random(92, 114, 1))
					Send("%")
					Sleep(Random(88, 114, 1))
					Send("s")
					Sleep(Random(95, 114, 1))
					Send("e")
					Sleep(Random(91, 114, 1))
					Send("l")
					Sleep(Random(92, 114, 1))
					Send("l")
					Sleep(Random(92, 114, 1))
					Send(" ")
					Sleep(Random(88, 114, 1))
					Send("a")
					Sleep(Random(95, 114, 1))
					Send("l")
					Sleep(Random(91, 114, 1))
					Send("l")
					Sleep(Random(92, 114, 1))
					Send(" ")
					Sleep(Random(88, 114, 1))
					Send("T")
					Sleep(Random(95, 114, 1))
					Send("r")
					Sleep(Random(91, 114, 1))
					Send("o")
					Sleep(Random(92, 114, 1))
					Send("p")
					Sleep(Random(88, 114, 1))
					Send("i")
					Sleep(Random(95, 114, 1))
					Send("c")
					Sleep(Random(91, 114, 1))
					Send("a")
					Sleep(Random(92, 114, 1))
					Send("l")
					Sleep(Random(88, 114, 1))
					Send(" ")
					Sleep(Random(95, 114, 1))
					Send("F")
					Sleep(Random(91, 114, 1))
					Send("i")
					Sleep(Random(92, 114, 1))
					Send("s")
					Sleep(Random(92, 114, 1))
					Send("h")
					Sleep(Random(94, 114, 1))
					Send("{ENTER}")
					$tempstr = _NowTime(4) + " Sold all Tropical Fishes"
					FileWrite($logfile, $tempstr & @CRLF)
				EndIf
			EndIf
		EndIf
		Sleep(Random(92, 114, 1))
		Send("%")
		Sleep(Random(88, 114, 1))
		Send("f")
		Sleep(Random(95, 114, 1))
		Send("i")
		Sleep(Random(91, 114, 1))
		Send("s")
		Sleep(Random(92, 114, 1))
		Send("h")
		Sleep(Random(94, 114, 1))
		Send("{ENTER}")
		Sleep(Random(2651, 2933, 1))
		$tempstr = _NowTime(4) + " Fished... Selling in " + $sellafter - $c + " turns."
		FileWrite($logfile, $tempstr & @CRLF)
		$c = $c + 1
	WEnd
 EndFunc   ;==>start
 $logfile = FileOpen($logpath, $FO_APPEND)
stop()
