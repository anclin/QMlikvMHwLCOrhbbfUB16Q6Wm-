#Persistent
#SingleInstance force
;http://patorjk.com/software/taag/#p=display&h=0&v=0&f=ANSI%20Regular&t=RC%20CLEAN%20NAMES

~^s::
{
	IfWinActive, AHK - Visual Studio Code
	{
		Sleep, 200
		Reload
	}
	return
}
	 
 --------------------------------------------------------------
 ----- Mac Keyboard Windows Key Switch ------------------------
 --------------------------------------------------------------

*LWin::LAlt
*LAlt::LWin


 ---------- Undo & Redo  ----------

; Undo
;#z::^z

; Redo
;#y::^y
!Tab::Esc

 --------------------------------------------------------------
 -----  Media Keys --------------------------------------------
 --------------------------------------------------------------
F13::Media_Prev
F14::Media_Play_Pause
F15::Media_Next

F17::Volume_Down
F18::Volume_Up
F19::Volume_Mute

;F16::Run calc.exe
F16::!p ;Spotify Favorite


---- Snipping Tool  ------------------------------
+^!4:: 
Run, %windir%\system32\SnippingTool.exe
Sleep, 200 
Send, ^N
Return

---- Explorer -> Enter for Rename  ------------------------------
/*
#IfWinActive, ahk_class CabinetWClass
Enter::F2
#IfWinActive
*/

----  SHOW INFO FILE  --------- LCtrl + i -----------------
#IfWinActive, ahk_class CabinetWClass
<^i:: !Enter
Return
#IfWinActive

/*
████████ ██   ██ ████████     ██████  ███████ ██████  ██       █████   ██████ ██ ███    ██  ██████  
   ██     ██ ██     ██        ██   ██ ██      ██   ██ ██      ██   ██ ██      ██ ████   ██ ██       
   ██      ███      ██        ██████  █████   ██████  ██      ███████ ██      ██ ██ ██  ██ ██   ███ 
   ██     ██ ██     ██        ██   ██ ██      ██      ██      ██   ██ ██      ██ ██  ██ ██ ██    ██ 
   ██    ██   ██    ██        ██   ██ ███████ ██      ███████ ██   ██  ██████ ██ ██   ████  ██████ 
*/

 --------  Todays Date  ---------------------
<^!NumpadAdd::
FormatTime, CurrentDateTime,, yyMMdd_
SendInput %CurrentDateTime%
return


 -------- Replacing  ---------------------

:*:anclin.::anclin.tadej@gmail.com
:*:hello"::hello@mun.si
/*
:*:info@n::info@notr.si
:*:info"n::info@notr.si
:*:info@::info@anclintadej.com
:*:info"::info@anclintadej.com

:*:bor@::bor@notr.si
:*:bor"::bor@notr.si
:*:tadej@::tadej@notr.si
:*:tadej"::tadej@notr.si
:*:@g::@gmail.com
*/

:*:(L)::(Y)
:*:>D:::D
:*:>(:::)
:*:<(::;)
:*:>O:::O


:*:yt::YouTube
:*:wt::WeTransfer

:*:cerklje::Cerklje na Gorenjskem
:*:lahov::Lahov{U+010D}e 91

<^!2::
Send, @
Return

^+2::
Send, @
Return

 ---------- Dictionary  ----------
:*:havent::haven't 
:*:didnt::didn't 
:*:realy::really 
:*:im ::I'm{Space}




 ---------------------------------------------------------------------------------------------------------------
 ----  SHOW SHORTCUTS  -------------- Shift + Num Multiply -----------------------------------------------------
 ---------------------------------------------------------------------------------------------------------------

<+NumpadMult::
	Gui, +AlwaysOnTop +ToolWindow -SysMenu -Caption
	Gui, Color, dddddd
	Gui, Font, 000000 s10 , Arial
	Gui, Add, Text,, FOLDERS`n`nCtrl + Alt + Shift + Num Minus = Delete Empty Folders`nCtrl + Shift + Num Minus = Copy folder list to clipboard`nCtrl + Alt + Num Minus = Make Folders`nCtrl + Alt + Num Plus = Write Today's Date`n`n Adobe PREMIERE PRO`n`nCtrl + BB = Make Folders`n`nCtrl + RR = Speed Up to 200`nCtrl + RRR = Speed Up to 300`nCtrl + RRRR = Speed Up to 400`n`nCtrl + Shift + RR = Reverse Speed`nShift + R = Reset Speed to 100`n`nShift + RR = Speed Down to 200`nShift + RRR = Speed Down to 300`nShift + RRRR = Speed Down to 400`n`nCtrl + NN = Nest & Warp Stabelize`n`nAHK SHORTCUTS`n`n^ = Control`n! = Alt`n+ = Shift`n`nCtrl + R = Add custom suffix`nCtrl + Alt + Shift + Num Add = Advanced Renamer
	Gui, Show, NoActivate, X0, Y0

Sleep, 7000
Gui, Destroy
Return


/*
███████ ██       █████   ██████ ██   ██ 
██      ██      ██   ██ ██      ██  ██  
███████ ██      ███████ ██      █████   
     ██ ██      ██   ██ ██      ██  ██  
███████ ███████ ██   ██  ██████ ██   ██
*/
 ---------------------------------------------------------------------------------------------------------------
 ----  SLACK GIPHY  -----------------------------------------------------
 ---------------------------------------------------------------------------------------------------------------

#IfWinActive, ahk_exe slack.exe
<^d::
Send, {Tab}
Send, {Enter}
Send, GIPHY
Sleep, 650
Send, {Tab}
Send, {Enter}
Return
#IfWinActive



/*
 ██████ ██   ██ ██████   ██████  ███    ███ ███████ 
██      ██   ██ ██   ██ ██    ██ ████  ████ ██      
██      ███████ ██████  ██    ██ ██ ████ ██ █████   
██      ██   ██ ██   ██ ██    ██ ██  ██  ██ ██      
 ██████ ██   ██ ██   ██  ██████  ██      ██ ███████
*/
 ---------------------------------------------------------------------------------------------------------------
 ----  SPREAD SHEET - MERGE CELL  -----------------------------------------------------
 ---------------------------------------------------------------------------------------------------------------
/*
#IfWinActive, ahk_class Chrome
Send, !o
Sleep, 100
Send, {M}
Sleep, 100
Send, {Enter}
Return
#IfWinActive
*/
/*
        ███████ ██    ██ ███████ ███████ ██ ██   ██ 
        ██      ██    ██ ██      ██      ██  ██ ██  
        ███████ ██    ██ █████   █████   ██   ███   
             ██ ██    ██ ██      ██      ██  ██ ██  
███████ ███████  ██████  ██      ██      ██ ██   ██
*/
#IfWinActive, ahk_class CabinetWClass
^r::
    Explorer_GetSelection(hwnd="") {
	hwnd := hwnd ? hwnd : WinExist("A")
	WinGetClass class, ahk_id %hwnd%
	InputBox, suf, What's the _sufix?, promp,,100,100
	if (class="CabinetWClass" or class="ExploreWClass" or class="Progman")
		for window in ComObjCreate("Shell.Application").Windows
			if (window.hwnd==hwnd)
    CurrentWindow := window.Document.SelectedItems
	for item in CurrentWindow {
	    Selectedfile := item.path ; Getting selected file with full path.
        SplitPath, % Selectedfile,name, dir, ext, name_no_ext ; Getting the path, name, name without extension and the extension of the selected file.
        FileMove, % Selectedfile, %dir%\%name_no_ext%%suf%.%ext% ; Adding "%suf%" to the name of the file.
        RenameLog = %RenameLog%%name%  --->  %name_no_ext%%suf%.%ext%`n ; Adding current change to the Log message at the end.
        Selectedfile := ; Clearing the selected file variable to be ready for the next selected item if exist.
    }
	If (RenameLog <> "") {
		;Msgbox Renaming Log:`n`n%RenameLog%
	}
	else {
		;Msgbox Cannot get the selected files, it is not an Explorer Window or nothing is selected.
    }
}
Return
#IfWinActive




/*
 █████  ███████ ████████ ███████ ██████      ███████ ███████ ███████ ███████  ██████ ████████ ███████ 
██   ██ ██         ██    ██      ██   ██     ██      ██      ██      ██      ██         ██    ██      
███████ █████      ██    █████   ██████      █████   █████   █████   █████   ██         ██    ███████ 
██   ██ ██         ██    ██      ██   ██     ██      ██      ██      ██      ██         ██         ██ 
██   ██ ██         ██    ███████ ██   ██     ███████ ██      ██      ███████  ██████    ██    ███████ 
                                                                                                      
*/
------------------------------------------------------------------------------------------------------
---------------- Adobe After Effects  ----------------------------------------------------------------
------------------------------------------------------------------------------------------------------
;#IfWinActive, ahk_exe AfterFX.exe

;;z::y
;;y::z

-------------- FAST NESTING OR/AND STABELIZE --------------------------- DISABLED 
/*
m::
t := A_PriorHotkey == A_ThisHotkey && A_TimeSincePriorHotkey < 200 ? "off" : -200
settimer, num3, %t%
if (t == "off")
 goto double4
return

num3:
Send, m
Return

double4:
Send, {LControl space}
;Send, Set Matte 
;Send, {Enter}

Return 
*/
------------ AE FOLDERS MAKING --------
#IfWinActive, ahk_exe AfterFX.exe
!^+n::
t := A_PriorHotkey == A_ThisHotkey && A_TimeSincePriorHotkey < 200 ? "off" : -200
settimer, num4, %t%
if (t == "off")
 goto double4
return

num4:
Send, !^+n
Return

double4:
Send, !^+n
Send, 00_Folders
Send, {Enter}
Send, !^+n
Send, 05_PRECOMPS
Send, {Enter}
Send, {Up}{Up}
Send, !^+n
Send, 04_AUDIO
Send, {Enter}
Send, {Up}{Up}
Send, !^+n
Send, 03_ASSETS
Send, {Enter}
Send, {Up}{Up}
Send, !^+n
Send, 01_SEQUENCES
Send, {Enter}
Send, {Up}{Up}
Send, !^+n
Send, 02_FOOTAGE
Send, {Enter}
Send, {Up}{Up}
Send, {Down}{Shift+Down}{Shift+Down}{Shift+Down}{Shift+Down}{Shift+Down}




Return 
#IfWinActive






/*


------------ AE MAKE SET MATTE EFFECT --------
#IfWinActive, ahk_exe AfterFX.exe
m::
if counter >= 0 ; setTimer already started, so we log the keypress instead
{
	counter++
	return
}
counter = 0 ; Start setTimer and set the number of logged keypresses to 0
setTimer,keyWinD, 400
return

keyWinD:
setTimer,keyWinD,off
if counter = 0 ; The key is pressed once
{
Send, m
}
if counter = 1 ; The key is pressed twice
{
Send, mm
}
if counter = 2 ; The key is pressed thrice
{
	Send, {RButton}
	Send, {Down 10}
	send, {Right}
	Send, {Down 10}
	Send, {Enter}
}
counter = -1
Return 

#IfWinActive
/*
*/
------------ AE SHORT ADJ LAYER --------

!#z::
t := A_PriorHotkey == A_ThisHotkey && A_TimeSincePriorHotkey < 200 ? "off" : -200
settimer, num5, %t%
if (t == "off")
 goto double5
return

num5:
Send, !#z
Return

double5:
Send, !#z
Sleep, 1000
Send, {LCtrl PgUp}{LCtrl PgUp}
Sleep, 1000
Send, !b
Sleep, 1000
Send, {LCtrl PgDn}{LCtrl PgDn}{LCtrl PgDn}{LCtrl PgDn}{LCtrl PgDn}{LCtrl PgDn}{LCtrl PgDn}{LCtrl PgDn}{LCtrl PgDn}{LCtrl PgDn}
Send, !+b

Return 




------------ AE REPLACEMENT --------  DISABLED 
/*
:*:loopo::loopOut("cycle")

:*:ttemp::
Send, {Up}{End}
Sleep, 10
Send, +^{Home}
Sleep, 5
Send, ^c
Sleep, 5
Send, {Left}{Enter}
Sleep, 5
Send, {Up}
Send, ^v
Sleep, 5
Send, {Left}{Left}{Down}
Sleep, 5
send,{BackSpace}1
Sleep, 5
Send, {Home}
Sleep, 5
Send, ^{Right}{Left}Y
Sleep, 5
Send, {Up}{Left}
Sleep, 5
Send, X
Sleep, 5
Send, {Down}{Down}{Left}X
Sleep, 5
Send, ^{End}{Left}Y
Return

:*:tttemp::
Send, {Up}{End}
Sleep, 10
Send, +^{Home}
Sleep, 5
Send, ^c
Sleep, 5
Send, {Left}{Enter}
Sleep, 5
Send, {Up}
Send, ^v
Sleep, 5
Send, {Left}{Left}{Down}
Sleep, 5
send,{BackSpace}1
Sleep, 5
Send, {Home}
Sleep, 5
Send, ^{Right}{Left}Y
Sleep, 5
Send, {Up}{Left}
Sleep, 5
Send, X
Sleep, 5
Send, {Down}{Down}{Left}X
Sleep, 5
Send, ^{End}{Left}Y
Sleep, 5
Send, {Up}{Up}{End}{Left}
Sleep, 5
Send, {+}time*10
Return

 
:*:wiggle::
Send, wiggle(1,10){left}{left}{left}{left}
Sleep, 5
Send, {Shift Left Left}
Return
*/
------------------------------------------------------------------------------------------------------
---------------- Adobe Adobe Premiere Pro ------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
/*
██████  ██████  ███████ ███    ███ ██ ███████ ██████  ███████     ██████  ██████   ██████  
██   ██ ██   ██ ██      ████  ████ ██ ██      ██   ██ ██          ██   ██ ██   ██ ██    ██ 
██████  ██████  █████   ██ ████ ██ ██ █████   ██████  █████       ██████  ██████  ██    ██ 
██      ██   ██ ██      ██  ██  ██ ██ ██      ██   ██ ██          ██      ██   ██ ██    ██ 
██      ██   ██ ███████ ██      ██ ██ ███████ ██   ██ ███████     ██      ██   ██  ██████  
 */                                                                                          
                                                                                           


-------------------- repeating some clicks -------------------
#IfWinActive Adobe Premiere Pro
+!k::

InputBox, rnum, How many times?

Loop, %rnum%,
{

Send, {Down}
Send, ^k
Sleep, 700

}

Return


Return
#IfWinActive
-------------------- Replace some text ------------------- DISABLED 
/*
:*:_hor::_horizontal
:*:_ver::_vertical
:*:_sq::_square
*/
-------------------- FX Warp ------------------- DISABLED 
#IfWinActive Adobe Premiere Pro
/*
-::
MouseClick, L, 1100, 600,
Send, {Home}
Send, {End}
Send, ^!+e
Send, {Tab}{Tab}
Send, warp
MouseClickDrag, L,1400, 300, 970, 830, 
Return
*/
/*
^!+E::
if counter >= 0 ; setTimer already started, so we log the keypress instead
{
	counter++
	return
}
counter = 0 ; Start setTimer and set the number of logged keypresses to 0
setTimer,keyWinFX, 400
return

keyWinFX:
setTimer,keyWinFX,off
if counter = 0 ; The key is pressed once
{
	Send, ^!+E
}
if counter = 1 ; The key is pressed twice
{
	Send, ^!+E
	Send, {Tab}{Tab}{Tab}
	Send, warp st
}
if counter = 2 ; The key is pressed thrice
{

}
counter = -1
return
*/
----------------------- FIXING FALVIAR SUBS ---------------------------------------
#IfWinActive Adobe Premiere Pro
Esc::
zloop = 1 ; STOP LOOP
Return

#IfWinActive Adobe Premiere Pro
<^+f::
Loop, 100
{ ;commands -- START
MouseClick, Left , 1150, 170, 2
Sleep, 500
MouseClick, Left , 1200, 410, 2
MouseClick, Left , 1200, 410, 2
Sleep, 500
Send, 1520
MouseClick, Left , 571, 471, 2
Sleep, 500
Send, {Down}

;commands -- FINISH
  if zloop = 1
  {
    zloop = 0
    break
  }
}
Return 

----------------------- FAST NESTING OR/AND STABELIZE ---------------------------------------
#IfWinActive Adobe Premiere Pro
<^n::
t := A_PriorHotkey == A_ThisHotkey && A_TimeSincePriorHotkey < 200 ? "off" : -200
settimer, num2, %t%
if (t == "off")
 goto double2
return

num2:
Send, ^n
Send, {Enter}
Return

double2:
Coordmode, mouse, Screen
MouseGetPos, MouseVarNestX, MouseVarNestY,

Send, ^n
Send, {Enter}
Send, !^+e 
Send, {Tab}{Tab}
Send, Warp Stab

MouseClick, left, %MouseVarNestX%, %MouseVarNestY%, 1
MouseClick, Left , 2000, 970, 2
Send, {Tab}{Tab}{BackSpace}
Send, !^+l
MouseClick, left, %MouseVarNestX%, %MouseVarNestY%, 1

Return 
---------------------- MAKE FOLDERS ---------------------------------------
#IfWinActive Adobe Premiere Pro
<^b::
t := A_PriorHotkey == A_ThisHotkey && A_TimeSincePriorHotkey < 200 ? "off" : -200
settimer, num1, %t%
if (t == "off")
 goto double1
return

num1:
Send, <^b
Return

double1:
Send, ^b
Send, FOLDERS{Enter}
Send, ^b
Send, 03_AUDIO{Enter}{down}
Send, ^b
Send, VO{Enter}{down}
Send, ^b
Send, SFX{Enter}{Enter}{down}
Send, ^b
Send, REC{Enter}{Enter}{down}
Send, ^b
Send, MUSIC{Enter}{escape}{up}{up}{up}
Send, ^b
Send, 02_FOOTAGE{Enter}{escape}{up}{up}
Send, ^b
Send, 04_GRAPHICS{Enter}{escape}{up}{up}
Send, ^b
Send, 01_SEKVENCE{Enter}{escape}{up}{up}
Send, ^b
Send, 06_CROPMARKS{Enter}{escape}{up}{up}
Send, ^b
Send, 07_PRECOMPS{Enter}{escape}{up}{up}
Send, ^b
Send, 05_ASSETS{Enter}{escape}{up}{up}
Send, ^b
Send, 07_AE_LINKS{Enter}{escape}{up}{up}

Return 

-------------------- REVERSE SPEED 100 -------------------
#IfWinActive Adobe Premiere Pro
<^+r::
	Send, <^r
	Send, {Tab}
	Send, {Tab}
	Send, {Space}
	Send, {Enter}
return

-------------------- ADD CAPTION ------------------- DISABLED 
/*
y::
	; Get the position of the mouse
MouseGetPos mouseX, mouseY	

; Click what you want here
Click 800, 820, 1 
Click 785, 616, 1

; Move the mouse back to where it was
MouseMove mouseX, mouseY
return
*/


-------------------- 25 or 50 or 100 INTERPERATE FOOTAGE FPS------------------- DISABLED 	
/*
<+^!r::
if counter >= 0 ; setTimer already started, so we log the keypress instead
{
	counter++
	return
}
counter = 0 ; Start setTimer and set the number of logged keypresses to 0
setTimer,keyWinD, 400
return

keyWinD:
setTimer,keyWinD,off
if counter = 0 ; The key is pressed once
{
	Send, ^!+U
	Send, ^!+I
	Send, {Right}{Right}{Right}{Right}{Right}
	Send, ^a
	Send, 25
	Send, {Enter}
}
if counter = 1 ; The key is pressed twice
{
	Send, ^!+U
	Send, ^!+I
	Send, {Right}{Right}{Right}{Right}{Right}
	Send, ^a
	Send, 50
	Send, {Enter}
}
if counter = 2 ; The key is pressed thrice
{
	Send, ^!+U
	Send, ^!+I
	Send, {Right}{Right}{Right}{Right}{Right}
	Send, ^a
	Send, 100
	Send, {Enter}
}
counter = -1
return
*/

-------------------- 50 or 100 SPEED DOWN -------------------
#IfWinActive Adobe Premiere Pro
<+r::
if counter >= 0 ; setTimer already started, so we log the keypress instead
{
	counter++
	return
}
counter = 0 ; Start setTimer and set the number of logged keypresses to 0
setTimer,keyWinA, 400
return

keyWinA:
setTimer,keyWinA,off
if counter = 0 ; The key is pressed once
{
	Send, <^r
	Send, 100
	Send, {Enter}
}
if counter = 1 ; The key is pressed twice
{
	Send, <^r
	Send, 50
	Send, {Enter}
}
if counter = 2 ; The key is pressed thrice
{
	Send, <^r
	Send, 25
	Send, {Enter}
}
counter = -1
return


-------------------- 100 or 400 SPEED UP -------------------
#IfWinActive Adobe Premiere Pro
<^r::
if counter >= 0 ; setTimer already started, so we log the keypress instead
{
	counter++
	return
}
counter = 0 ; Start setTimer and set the number of logged keypresses to 0
setTimer,keyWinC, 600
return

keyWinC:
setTimer,keyWinC,off
if counter = 0 ; The key is pressed once
{
	Send, <^r
}
if counter = 1 ; The key is pressed twice
{
	Send, <^r
	Send, 200
	Send, {Enter}
}
if counter = 2 ; The key is pressed thrice
{
	Send, <^r
	Send, 300
	Send, {Enter}
}
if counter = 3 ; The key is pressed fries
{
	Send, <^r
	Send, 400
	Send, {Enter}
}
counter = -1
return

#IfWinActive Adobe Premiere Pro
XButton1::Up

#IfWinActive Adobe Premiere Pro
XButton2::Down





/*

██      ██  ██████  ██   ██ ██████  ████████  ██████   ██████  ███    ███ 
██      ██ ██       ██   ██ ██   ██    ██    ██    ██ ██    ██ ████  ████ 
██      ██ ██   ███ ███████ ██████     ██    ██    ██ ██    ██ ██ ████ ██ 
██      ██ ██    ██ ██   ██ ██   ██    ██    ██    ██ ██    ██ ██  ██  ██ 
███████ ██  ██████  ██   ██ ██   ██    ██     ██████   ██████  ██      ██ 
  */                                                                        
                                                                          
 -------------------------------------------------------------------------------------------------------------
 ---------------- Adobe Lighrtoom ----------------------------------------------------------------------------
 -------------------------------------------------------------------------------------------------------------
                                                                                                                  
                                                                                                                     
                                                                           


-------- Import key swap -----

#IfWinActive, ahk_exe Lightroom.exe
Esc::
#IfWinActive





/*
 █████  ██    ██ ██████  ██  ██████      ███████ ██     ██ ██ ████████  ██████ ██   ██ 
██   ██ ██    ██ ██   ██ ██ ██    ██     ██      ██     ██ ██    ██    ██      ██   ██ 
███████ ██    ██ ██   ██ ██ ██    ██     ███████ ██  █  ██ ██    ██    ██      ███████ 
██   ██ ██    ██ ██   ██ ██ ██    ██          ██ ██ ███ ██ ██    ██    ██      ██   ██ 
██   ██  ██████  ██████  ██  ██████      ███████  ███ ███  ██    ██     ██████ ██   ██ 
 */                                                                                                                                                                            
 --------------------------------------------------------------------
 ------  AUDIO SWITCH  ---------------------------------------------- DISABLED 
 --------------------------------------------------------------------

/*
^F16:: 
  toggle:=!toggle ;toggles up and down states. 
  Run, mmsys.cpl 
  WinWait,Sound ; Change "Sound" to the name of the window in your local language 
  if toggle
    ControlSend,SysListView321,{Down 1} ; This number selects the matching audio device in the list, change it accordingly 
  Else
    ControlSend,SysListView321,{Down 2} ; This number selects the matching audio device in the list, change it accordingly 
  ControlClick,&Set Default ; Change "&Set Default" to the name of the button in your local language 
  ControlClick,OK 
return
*/








/*
██████   ██████      ██████ ██      ███████  █████  ███    ██     ███    ██  █████  ███    ███ ███████ ███████ 
██   ██ ██          ██      ██      ██      ██   ██ ████   ██     ████   ██ ██   ██ ████  ████ ██      ██      
██████  ██          ██      ██      █████   ███████ ██ ██  ██     ██ ██  ██ ███████ ██ ████ ██ █████   ███████ 
██   ██ ██          ██      ██      ██      ██   ██ ██  ██ ██     ██  ██ ██ ██   ██ ██  ██  ██ ██           ██ 
██   ██  ██████      ██████ ███████ ███████ ██   ██ ██   ████     ██   ████ ██   ██ ██      ██ ███████ ███████                                                                                                  
*/
----------------------------------------------------------------------------------------------------------------
---- EXPLORER -  CREATE VIDEO FOLDERS ------------------------LCtrl + Alt + Shift + Num Add ------------------------------
----------------------------------------------------------------------------------------------------------------


#IfWinActive, ahk_class CabinetWClass
^!+NumpadAdd:: 
#IfWinActive, ahk_class ExploreWClass
^!+NumpadAdd:: 

Run F:\RC\RC_RESOURCES\Handy Tools\Renamer.ahk
Return
#IfWinActive
#IfWinActive







/*
██    ██ ██ ██████  ███████  ██████      ███████  ██████  ██      ██████  ███████ ██████  ███████ 
██    ██ ██ ██   ██ ██      ██    ██     ██      ██    ██ ██      ██   ██ ██      ██   ██ ██      
██    ██ ██ ██   ██ █████   ██    ██     █████   ██    ██ ██      ██   ██ █████   ██████  ███████ 
 ██  ██  ██ ██   ██ ██      ██    ██     ██      ██    ██ ██      ██   ██ ██      ██   ██      ██ 
  ████   ██ ██████  ███████  ██████      ██       ██████  ███████ ██████  ███████ ██   ██ ███████ 
                                                                                                  
*/
----------------------------------------------------------------------------------------------------------------
---- EXPLORER -  CREATE VIDEO FOLDERS ------------------------LCtrl + Alt + Num / ------------------------------
----------------------------------------------------------------------------------------------------------------


#IfWinActive, ahk_class CabinetWClass
<^!NumpadSub:: 
#IfWinActive, ahk_class ExploreWClass
<^!NumpadSub:: 
WinGetTitle, Title, A

   Gui, +AlwaysOnTop +ToolWindow -SysMenu -Caption
   Gui, Color, dddddd
   Gui, Font, 000000 s8 , Arial
	Gui, Add, Text,, Making Folders in %Title%
Gui, Show, NoActivate, X0, Y0




FileCreateDir, %Title%\01_FROM_CLIENT_ORIGINAL

FileCreateDir, %Title%\02_FOOTAGE
;FileCreateDir, %Title%\02_FOOTAGE\Day_01
;FileCreateDir, %Title%\02_FOOTAGE\Day_02
;FileCreateDir, %Title%\02_FOOTAGE\Day_03

FileCreateDir, %Title%\03_PRERENDERS
FileCreateDir, %Title%\03_PRERENDERS\Tracking

FileCreateDir, %Title%\04_AUDIO
FileCreateDir, %Title%\04_AUDIO\VO
FileCreateDir, %Title%\04_AUDIO\SOUNDMIX
FileCreateDir, %Title%\04_AUDIO\MUSIC
FileCreateDir, %Title%\04_AUDIO\FX
FileCreateDir, %Title%\04_AUDIO\RECORDED
FileCreateDir, %Title%\04_AUDIO\RECORDED\Day_01
FileCreateDir, %Title%\04_AUDIO\RECORDED\Day_02
FileCreateDir, %Title%\04_AUDIO\RECORDED\Day_03

FileCreateDir, %Title%\05_ASSETS

FileCreateDir, %Title%\06_GRAPHICS

FileCreateDir, %Title%\07_PHOTO

FileCreateDir, %Title%\08_PROGRAMS
FileCreateDir, %Title%\08_PROGRAMS\AfterEffects
FileCreateDir, %Title%\08_PROGRAMS\PremierePro
FileCreateDir, %Title%\08_PROGRAMS\PremierePro_XML
FileCreateDir, %Title%\08_PROGRAMS\Davinci_Resolve
FileCreateDir, %Title%\08_PROGRAMS\C4D


FileCreateDir, %Title%\09_DOCUMENTS

FileCreateDir, %Title%\10_BTS

;FileCreateDir, %Title%\11_CINEGRAPH

FileCreateDir, %Title%\11_FONTS

FileCreateDir, %Title%\12_EXPORTS
FileCreateDir, %Title%\12_EXPORTS\PREVIEWS
FileCreateDir, %Title%\12_EXPORTS\FINALS

Send, ^+6
Sleep, 2000
Gui, Destroy
Return
#IfWinActive














/*
██████   ██████     ███████  ██████  ██      ██████  ███████ ██████  ███████ 
██   ██ ██          ██      ██    ██ ██      ██   ██ ██      ██   ██ ██      
██████  ██          █████   ██    ██ ██      ██   ██ █████   ██████  ███████ 
██   ██ ██          ██      ██    ██ ██      ██   ██ ██      ██   ██      ██ 
██   ██  ██████     ██       ██████  ███████ ██████  ███████ ██   ██ ███████ 
*/
----------------------------------------------------------------------------------------------------------------
---- EXPLORER -  CREATE REALITY CAPTURE FOLDERS ------------- LCtrl + Alt + Num * -------------------------------
----------------------------------------------------------------------------------------------------------------

#IfWinActive, ahk_class CabinetWClass
<^!NumpadMult:: 
#IfWinActive, ahk_class ExploreWClass
<^!NumpadMult:: 
WinGetTitle, Title, A

   Gui, +AlwaysOnTop +ToolWindow -SysMenu -Caption
   Gui, Color, dddddd
   Gui, Font, 000000 s8 , Arial
	Gui, Add, Text,, Making RC Folders in %Title%
Gui, Show, NoActivate, X0, Y0




FileCreateDir, %Title%\01_PHOTOS_RAW
;FileCreateDir, %Title%\01_PHOTOS_RAW\Drone
;FileCreateDir, %Title%\01_PHOTOS_RAW\Camera

FileCreateDir, %Title%\02_PHOTOS_JPG
;FileCreateDir, %Title%\02_PHOTOS_TIFs\Drone
;FileCreateDir, %Title%\02_PHOTOS_TIFs\Camera

FileCreateDir, %Title%\03_PROGRAMS
FileCreateDir, %Title%\03_PROGRAMS\01_RC
FileCreateDir, %Title%\03_PROGRAMS\01_MT
FileCreateDir, %Title%\03_PROGRAMS\02_ZB
FileCreateDir, %Title%\03_PROGRAMS\03_C4D
FileCreateDir, %Title%\03_PROGRAMS\04_After_Effects
FileCreateDir, %Title%\03_PROGRAMS\05_OTHR

FileCreateDir, %Title%\04_OBJ

FileCreateDir, %Title%\04_OBJ_RAW
FileCreateDir, %Title%\04_OBJ_RAW\RC
FileCreateDir, %Title%\04_OBJ_RAW\ZBR
FileCreateDir, %Title%\04_OBJ_RAW\TEX

/*FileCopy, C:\Default.obj.rcInfo, %Title%\04_OBJ\LOD_00_UHD_Project  ;RealityCapture obj info file
FileCreateDir, %Title%\04_OBJ\LOD_00
FileCreateDir, %Title%\04_OBJ\LOD_01
FileCreateDir, %Title%\04_OBJ\LOD_02
FileCreateDir, %Title%\04_OBJ\LOD_03
FileCreateDir, %Title%\04_OBJ\LOD_04
FileCreateDir, %Title%\04_OBJ\LOD_05
FileCreateDir, %Title%\04_OBJ\LOD_06
FileCreateDir, %Title%\04_OBJ\LOD_07
FileCreateDir, %Title%\04_OBJ\LOD_08
*/
FileCreateDir, %Title%\05_TEX

FileCreateDir, %Title%\06_RENDERS

FileCreateDir, %Title%\07_STOCK_FINAL_MEDIA
FileCreateDir, %Title%\07_STOCK_FINAL_MODELS
FileCreateDir, %Title%\07_STOCK_FINAL_MODELS\tex
FileCreateDir, %Title%\07_STOCK_FINAL_MODELS\obj
FileCreateDir, %Title%\07_STOCK_FINAL_MODELS\previews
;FileCreateDir, %Title%\07_STOCK_GRAFIKE

FileCreateDir, %Title%\08_ASSETS


Send, ^+6
Sleep, 2000
Gui, Destroy
Return
#IfWinActive






/*
███    ██ ██    ██ ███    ███     ███████  ██████  ██      ██████  ███████ ██████  ███████ 
████   ██ ██    ██ ████  ████     ██      ██    ██ ██      ██   ██ ██      ██   ██ ██      
██ ██  ██ ██    ██ ██ ████ ██     █████   ██    ██ ██      ██   ██ █████   ██████  ███████ 
██  ██ ██ ██    ██ ██  ██  ██     ██      ██    ██ ██      ██   ██ ██      ██   ██      ██ 
██   ████  ██████  ██      ██     ██       ██████  ███████ ██████  ███████ ██   ██ ███████ 
*/
----------------------------------------------------------------------------------------------------------------
---- EXPLORER -  CREATE NUMMMEROUS FOLDERS ---------- LCtrl + Alt + Num1 / Num2 / Num3 /Num4 /------------------
----------------------------------------------------------------------------------------------------------------
	;-----------10 Folders ---------- Start

#IfWinActive, ahk_class CabinetWClass
<^!Numpad1:: 
#IfWinActive, ahk_class ExploreWClass
<^!Numpad1:: 
WinGetTitle, Title, A
WinGetTitle, Title, A

   Gui, +AlwaysOnTop +ToolWindow -SysMenu -Caption
   Gui, Color, dddddd
   Gui, Font, 000000 s8 , Arial
	Gui, Add, Text,, 10 Folders
Gui, Show, NoActivate, X0, Y0

FileCreateDir, %Title%\e01
FileCreateDir, %Title%\e02
FileCreateDir, %Title%\e03
FileCreateDir, %Title%\e04
FileCreateDir, %Title%\e05
FileCreateDir, %Title%\e06
FileCreateDir, %Title%\e07
FileCreateDir, %Title%\e08
FileCreateDir, %Title%\e09
FileCreateDir, %Title%\e10

Send, ^+6
Sleep, 2000
Gui, Destroy
Return
#IfWinActive
	;-----------10 Folders ---------- End

	;-----------20 Folders ---------- start
	#IfWinActive, ahk_class CabinetWClass
<^!Numpad2:: 
#IfWinActive, ahk_class ExploreWClass
<^!Numpad2:: 
WinGetTitle, Title, A
WinGetTitle, Title, A

   Gui, +AlwaysOnTop +ToolWindow -SysMenu -Caption
   Gui, Color, dddddd
   Gui, Font, 000000 s8 , Arial
	Gui, Add, Text,, === Flaviar Folders ===
Gui, Show, NoActivate, X0, Y0

FileCreateDir, %Title%\00 Assets\
FileCreateDir, %Title%\00 Assets\01 Images
FileCreateDir, %Title%\00 Assets\02 Video
FileCreateDir, %Title%\00 Assets\03 Audio

FileCreateDir, %Title%\01 Design\
FileCreateDir, %Title%\01 Design\AE
FileCreateDir, %Title%\01 Design\PR

FileCreateDir, %Title%\02 Exports\01 Preview
FileCreateDir, %Title%\02 Exports\02 Final
FileCreateDir, %Title%\02 Exports\03 Clean



Send, ^+6
Sleep, 2000
Gui, Destroy
Return
#IfWinActive
	;-----------20 Folders ---------- end

	;-----------30 Folders ---------- start
	#IfWinActive, ahk_class CabinetWClass
<^!Numpad3:: 
#IfWinActive, ahk_class ExploreWClass
<^!Numpad3:: 
WinGetTitle, Title, A
WinGetTitle, Title, A

   Gui, +AlwaysOnTop +ToolWindow -SysMenu -Caption
   Gui, Color, dddddd
   Gui, Font, 000000 s8 , Arial
	Gui, Add, Text,, 30 Folders
Gui, Show, NoActivate, X0, Y0

FileCreateDir, %Title%\Tullibardine 500 Sheryy Cask Finish
FileCreateDir, %Title%\Four Roses Single Barrel Bourbon
FileCreateDir, %Title%\Writers Tears Copper Pot
FileCreateDir, %Title%\Glenfarclas 105
FileCreateDir, %Title%\Carol Ila 12 Year Old
FileCreateDir, %Title%\Gold Of Mauritius Dark Rum
FileCreateDir, %Title%\Glenkinchie 12 Year Old
FileCreateDir, %Title%\Auchentoshan 12 YO
FileCreateDir, %Title%\The Ileach Cask Strenght
FileCreateDir, %Title%\Jameson Caskmates Stout Edition
FileCreateDir, %Title%\Starward Nova Single Malt
FileCreateDir, %Title%\Don Papa Small Batch Rum
FileCreateDir, %Title%\Matusalem 15 Gran Reserva
FileCreateDir, %Title%\Hercules Mulligan Rum & Rye
FileCreateDir, %Title%\Knob Creek Patiently Aged Kentucky
FileCreateDir, %Title%\Louis Royer Vsop Cognac
FileCreateDir, %Title%\Baron Otard Vsop
FileCreateDir, %Title%\Drumshanbo Gunbpowder Irish Gin
FileCreateDir, %Title%\Aviation Gin
FileCreateDir, %Title%\Le Pertuis Pure Malt Whisku

Send, ^+6

Gui, Destroy
Return
#IfWinActive
	;-----------30 Folders ---------- end






/*
███████ ███    ███ ██████  ████████ ██    ██     ███████  ██████  ██      ██████  ███████ ██████  ███████ 
██      ████  ████ ██   ██    ██     ██  ██      ██      ██    ██ ██      ██   ██ ██      ██   ██ ██      
█████   ██ ████ ██ ██████     ██      ████       █████   ██    ██ ██      ██   ██ █████   ██████  ███████ 
██      ██  ██  ██ ██         ██       ██        ██      ██    ██ ██      ██   ██ ██      ██   ██      ██ 
███████ ██      ██ ██         ██       ██        ██       ██████  ███████ ██████  ███████ ██   ██ ███████ 
*/                                                                                                          
----------------------------------------------------------------------------------------------------------------
----  DELETE EMPTY FOLDERS  ---------------------------------- LCtrl + Shift + Alt + Num Sub -----------------------------------
----------------------------------------------------------------------------------------------------------------

#IfWinActive, ahk_class CabinetWClass
<^+!NumpadSub:: 
#IfWinActive, ahk_class ExploreWClass
<^+!NumpadSub:: 
WinGetTitle, Title, A

SetBatchLines, -1  ; Make the operation run at maximum speed.

folders_deleted = 0
WhichFolder= %Title%
Loop, %WhichFolder%\*, 2 ;,1
	{
	currentfolder:=A_LoopFileFullPath
	FolderSizeKB = 0
	Loop, %CurrentFolder%\*.*, , 1
		{
		FolderSizeKB += %A_LoopFileSizeKB%
		}
	;msgbox %CurrentFolder%`n%FolderSizeKB%
	if FolderSizeKB < 100
		{
		;msgbox
		fileremovedir,%CurrentFolder%,1
		folders_deleted+=1
		}
	}
return
#IfWinActive



/*
 ██████  ██████  ██████  ██    ██     ███████ ██ ██      ███████     ██      ██ ███████ ████████ 
██      ██    ██ ██   ██  ██  ██      ██      ██ ██      ██          ██      ██ ██         ██    
██      ██    ██ ██████    ████       █████   ██ ██      █████       ██      ██ ███████    ██    
██      ██    ██ ██         ██        ██      ██ ██      ██          ██      ██      ██    ██    
 ██████  ██████  ██         ██        ██      ██ ███████ ███████     ███████ ██ ███████    ██    
*/                                                                                                 
 ----------------------------------------------------------------------------------------------------------------
 ----  LIST AND COPY FILE LIST TO CLIPBOARD  -------------- LCtrl + Shift + Num Sub ------------------------------------
 ----------------------------------------------------------------------------------------------------------------

#IfWinActive, ahk_class CabinetWClass
<^+NumpadSub:: 
#IfWinActive, ahk_class ExploreWClass
<^+NumpadSub:: 
WinGetTitle, Title, A

   Gui, +AlwaysOnTop +ToolWindow -SysMenu -Caption
   Gui, Color, dddddd
   Gui, Font, 000000 s8 , Arial
	Gui, Add, Text,, Clipboard all files (not folders)
Gui, Show, NoActivate, X0, Y0

FileAppend, % list_files(Title),
list_files(Title)
{

	files =
	Loop %Title%\*.*
	{
		files = %files%`n%A_LoopFileName%
		FileAppend, `n%Title%\%A_LoopFileName%, %Title%_list.txt
		clipboard  = %files%
	}
	return files
}

Sleep, 1000
Gui, Destroy
Return
#IfWinActive






/*
 ██████ ██ ███    ██ ███████ ███    ███  █████      ██   ██ ██████  
██      ██ ████   ██ ██      ████  ████ ██   ██     ██   ██ ██   ██ 
██      ██ ██ ██  ██ █████   ██ ████ ██ ███████     ███████ ██   ██ 
██      ██ ██  ██ ██ ██      ██  ██  ██ ██   ██          ██ ██   ██ 
 ██████ ██ ██   ████ ███████ ██      ██ ██   ██          ██ ██████  
                                                                    
*/
-------------------------------------------------------------------------------------------------------------
---------------- CINEMA 4D ------------------ CC (Letter C 2-times)--------------------------------------------------------
-------------------------------------------------------------------------------------------------------------


---------------------- Connect Objects + Delete ---------------------------------------
#IfWinActive, ahk_exe Cinema 4D.exe
c::
t := A_PriorHotkey == A_ThisHotkey && A_TimeSincePriorHotkey < 200 ? "off" : -200
settimer, C4D1, %t%
if (t == "off")
 goto C4D1double
return
#IfWinActive

#IfWinActive, ahk_exe Cinema 4D.exe
C4D1:
Send, c
Return
#IfWinActive

#IfWinActive, ahk_exe Cinema 4D.exe
C4D1double:
Send, x
send, v
Return 
#IfWinActive






/*
██████   █████  ██    ██ ██ ███    ██  ██████ ██     ██████  ███████ ███████  ██████  ██      ██    ██ ███████ 
██   ██ ██   ██ ██    ██ ██ ████   ██ ██      ██     ██   ██ ██      ██      ██    ██ ██      ██    ██ ██      
██   ██ ███████ ██    ██ ██ ██ ██  ██ ██      ██     ██████  █████   ███████ ██    ██ ██      ██    ██ █████   
██   ██ ██   ██  ██  ██  ██ ██  ██ ██ ██      ██     ██   ██ ██           ██ ██    ██ ██       ██  ██  ██      
██████  ██   ██   ████   ██ ██   ████  ██████ ██     ██   ██ ███████ ███████  ██████  ███████   ████   ███████                                                                   
*/


---------------------- Redo & Undu Fix ---------------------------------------
#IfWinActive, ahk_exe Resolve.exe
<^y::
Send, !+^1
Return
#IfWinActive

#IfWinActive, ahk_exe Resolve.exe
<^+y::
Send, !+^2
Return
#IfWinActive
