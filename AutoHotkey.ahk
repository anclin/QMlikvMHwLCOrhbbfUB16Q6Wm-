#Persistent

 --------------------------------------------------------------
 -----  Windows Key Switch ------------------------------------
 --------------------------------------------------------------

*LWin::LAlt
*LAlt::LWin
/*
Space::
MouseClick, Left,
Return
*/
 ---------- Undo & Redo  ----------

; Undo
;#z::^z

; Redo
;#y::^y


 --------------------------------------------------------------
 -----  Media Keys ---------------------------------------------
 --------------------------------------------------------------

F13::Media_Prev
F14::Media_Play_Pause
F15::Media_Next

;F16::Run calc.exe
F16::!p


F17::Volume_Down
F18::Volume_Up
F19::Volume_Mute


 --------------------------------------------------------------
 ----  Shortcut - Snipping Tool  ------------------------------
 --------------------------------------------------------------


+^!4:: 
Run, %windir%\system32\SnippingTool.exe
Sleep, 200 
Send, ^N
Return


 --------------------------------------------------------------
 ---- Text Replacing  -----------------------------------------
 --------------------------------------------------------------

 --------  Todays Date  ---------------------
<^!NumpadAdd::
FormatTime, CurrentDateTime,, yyMMdd_
SendInput %CurrentDateTime%
return


 --------  Greeting SLO  ---------------------
:*:ppo::
send, Pozdravi,{enter}{enter}{enter}{enter}Lp,{enter}Anclin T.{up}{up}{up}
return

 --------  Greeting ENG  ---------------------
:*:ppi::
send, Hello,{enter}{enter}I'm Tadej from video production company based in Slovenia. {enter}{enter}Best regards,{enter}Anclin Tadej, {enter}post producer at New Dimension{up}{up}{up}
return


 -------- Replacing  ---------------------

:*:anclin.::anclin.tadej@gmail.com
:*:info@::info@notr.si
:*:info"::info@notr.si
:*:bor@::bor@notr.si
:*:bor"::bor@notr.si
:*:tadej@::tadej@notr.si
:*:tadej"::tadej@notr.si
:*:@g::@gmail.com

:*:(L)::(Y)
:*:>D:::D
:*:>(:::)
:*:<(::;)
:*:>O:::O

:*:yt::YouTube
:*:wt::WeTransfer
:*:NDD::New Dimension
:*:iin::Infinity Pad
:*:mmo::Mushroom
:*:mmi::Mycelium

^!2::@

 ---------- Dictionary  ----------

:*:havent::haven't 
:*:didnt::didn't 
:*:realy::really 
:*:im ::I'm{Space}
:*:zanimiram::z-animiram
:*:poanimiram::po animiram





 ---------------------------------------------------------------------------------------------
 ----  APPLICATIONS SCRIPTS  -----------------------------------------------------------------
 ---------------------------------------------------------------------------------------------


------------------------------------------------------------------------------------------------------
---------------- Adobe After Effects  ----------------------------------------------------------------
------------------------------------------------------------------------------------------------------
#IfWinActive, ahk_exe AfterFX.exe

;;z::y
;;y::z
/*
----------------------- FAST NESTING OR/AND STABELIZE ---------------------------------------
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
Send, _Folders
Send, {Enter}
Send, !^+n
Send, FOOTAGE
Send, {Enter}
Send, {Up}
Send, !^+n
Send, SEQUENCES
Send, {Enter}
Send, {Up}{Up}
Send, !^+n
Send, PRECOMPS
Send, {Enter}
Send, {Up}{Up}
Send, !^+n
Send, GRAPHICS
Send, {Enter}
Send, {Up}{Up}
Send, !^+n
Send, AUDIO
Send, {Enter}
Return 

#IfWinActive
/*
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

#IfWinActive
/*

------------ AE REPLACEMENT --------
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
---------------- Adobe Premiere Pro ------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
#IfWinActive, ahk_exe Adobe Premiere Pro.exe
Return

/*
:*:_hor::_horizontal
:*:_ver::_vertical
:*:_sq::_square
*/
-------------------- FX Warp -------------------
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
----------------------- FAST NESTING OR/AND STABELIZE ---------------------------------------
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

Return 

-------------------- REVERSE SPEED 100 -------------------
<^+r::
	Send, <^r
	Send, {Tab}
	Send, {Tab}
	Send, {Space}
	Send, {Enter}
return

-------------------- ADD CAPTION -------------------
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


-------------------- 25 or 50 or 100 INTERPERATE FOOTAGE FPS-------------------	
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

#IfWinActive

 -------------------------------------------------------------------------------------------------------------
 ---------------- Adobe Lighrtoom ----------------------------------------------------------------------------
 -------------------------------------------------------------------------------------------------------------

-------- Import key swap ----- Disabled

#IfWinActive, ahk_exe Lightroom.exe

Esc::

#IfWinActive



-------------------------------------------------------------------------------------------------------------
---------------- Blackmagic Davinci Resolve -----------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
/*
#IfWinActive, ahk_exe Resolve.exe
Return

^z::^z

; Redo
^y::^y

-------- Numpad to dot -----
NumpadDot::.
3::d
^L::^+L


-------- Paralel Node Click -----
^W::
MouseGetPos, xpos, ypos
MouseClick, left , 560, 40
Sleep, 100
MouseMove, 560, 65, 10
MouseClick, left , 800, 65
Sleep, 100
MouseClick, left , 950, 150
MouseMove, xpos, ypos+65, 5
MouseClick, Right
MouseMove, 10, 40 , Speed, Relative
MouseClick, Left
Return

^Q::
MouseGetPos, xpos, ypos
MouseClick, left , 560, 40
Sleep, 100
MouseMove, 560, 65, 10
MouseClick, left , 800, 65
Sleep, 100
MouseClick, left , 950, 150
MouseMove, xpos, ypos+65, 5
MouseClick, Right
MouseMove, 10, 40 , Speed, Relative
MouseClick, Left
Return

#IfWinActive
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



--------------------------------------------------------------
----  LOCK SCREEN -------------------------------------------- DISABLED 
--------------------------------------------------------------
/*
F16::             ; Win-X = Monitor Off (key-press, mouse move switches back ON)
{
Sleep, 200
DllCall("LockWorkStation")
Sleep, 200
SendMessage,0x112,0xF170,2,,Program Manager
}
*/



----------------------------------------------------------------------------------------------------------------
---- EXPLORER -  CREATE WORKIGN FOLDERS ------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

#IfWinActive, ahk_class CabinetWClass
<^!NumpadSub:: 
#IfWinActive, ahk_class ExploreWClass
<^!NumpadSub:: 
#IfWinActive
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
FileCreateDir, %Title%\12_EXPORTS\CINEGRAPH

Send, ^+6
Sleep, 2000
Gui, Destroy
Return


----------------------------------------------------------------------------------------------------------------
---- EXPLORER -  CREATE REALITY CAPTURE FOLDERS ------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

#IfWinActive, ahk_class CabinetWClass
<^!NumpadMult:: 
#IfWinActive, ahk_class ExploreWClass
<^!NumpadMult:: 
#IfWinActive
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

FileCreateDir, %Title%\04_OBJ
FileCreateDir, %Title%\04_OBJ_RAW\RC
FileCreateDir, %Title%\04_OBJ_RAW\ZBR_UHD
FileCopy, C:\Default.obj.rcInfo, %Title%\04_OBJ\LOD_00_UHD_Project  ;RealityCapture obj info file
/*
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

FileCreateDir, %Title%\07_STOCK_RENDER_FINAL
FileCreateDir, %Title%\07_STOCK_3D_MODELS_FINAL
;FileCreateDir, %Title%\07_STOCK_GRAFIKE

FileCreateDir, %Title%\08_ASSETS


Send, ^+6
Sleep, 2000
Gui, Destroy
Return

----------------------------------------------------------------------------------------------------------------
----  DELETE EMPTY FOLDERS  ------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

#IfWinActive, ahk_class CabinetWClass
<^+!NumpadSub:: 
#IfWinActive, ahk_class ExploreWClass
<^+!NumpadSub:: 
#IfWinActive
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


 ----------------------------------------------------------------------------------------------------------------
 ----  LIST AND COPY FILE LIST TO CLIPBOARD  --------------------------------------------------------------------
 ----------------------------------------------------------------------------------------------------------------

#IfWinActive, ahk_class CabinetWClass
<^+NumpadSub:: 
#IfWinActive, ahk_class ExploreWClass
<^+NumpadSub:: 
#IfWinActive
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


----------------------------------------------------------------------------------------------------------------
----  SHOW INFOR FILE  -----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

#IfWinActive, ahk_class CabinetWClass
<^i:: !Enter
Return
#IfWinActive


 ---------------------------------------------------------------------------------------------------------------
 ----  SHOW SHORTCUTS  -------------- Shift + Num Multiply -----------------------------------------------------
 ------------------------------------------------------------------------c---------------------------------------

<+NumpadMult::
   Gui, +AlwaysOnTop +ToolWindow -SysMenu -Caption
   Gui, Color, dddddd
   Gui, Font, 000000 s10 , Arial
	Gui, Add, Text,, FOLDERS`n`nCtrl + Alt + Shift + Num Minus = Delete Empty Folders`nCtrl + Shift + Num Minus = Copy folder list to clipboard`nCtrl + Alt + Num Minus = Make Folders`n`nCtrl + Alt + Num Plus = Write Today's Date`n`nPREMIERE PRO`n`nCtrl + BB = Make Folders`n`nCtrl + RR = Speed Up to 200`nCtrl + RRR = Speed Up to 300`nCtrl + RRRR = Speed Up to 400`n`nCtrl + Shift + RR = Reverse Speed`nShift + R = Reset Speed to 100`n`nShift + RR = Speed Down to 200`nShift + RRR = Speed Down to 300`nShift + RRRR = Speed Down to 400`n`nCtrl + NN = Nest & Warp Stabelize`n`nAHK SHORTCUTS`n`n^ = Control`n! = Alt`n+ = Shift`n

Gui, Show, NoActivate, X0, Y0

Sleep, 7000
Gui, Destroy







-------------------------------------------------------------------------------------------------------------
---------------- CINEMA 4D ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------


---------------------- Connect Objects + Delete ---------------------------------------
#IfWinActive, ahk_exe Cinema 4D.exe
c::
t := A_PriorHotkey == A_ThisHotkey && A_TimeSincePriorHotkey < 200 ? "off" : -200
settimer, C4D1, %t%
if (t == "off")
 goto C4D1double
return

C4D1:
Send, c
Return

C4D1double:
Send, x
send, v


Return 
#IfWinActive






 ----------------------------------------------------------------------------------------------------------------
 ----  KNALD RENDERING  --------------------------------------------------------------------
 ----------------------------------------------------------------------------------------------------------------
/*

#IfWinActive, ahk_class CabinetWClass
+NumpadAdd:: 
#IfWinActive, ahk_class ExploreWClass
+NumpadAdd:: 
#IfWinActive

FormatTime, CurrentDateTime,, yyMMdd_

WinGetTitle, Title, A

windowtitle = %Title%

Stringsplit, path, windowtitle, \

Projpath = %path2%%path3%

Stringsplit, Projname, Projpath, _ 

 Run, knald.exe, C:\Program Files\Knald Technologies\Knald, max

Sleep, 11000

WinWait Knald - v1.2.1
WinActivate  ; Uses the last found window.

if WinExist("Knald - v1.2.1")
{
    WinActivate  ; Automatically s the window found above.
    WinMaximize  ; same

    MouseClick, left, 1500, 60, 1,
    Sleep, 300
    MouseClick, left, 1700, 180, 2,
    Sleep, 300
    Send, {BackSpace}
    Sleep, 300
    Send, %Projname2%
    Sleep, 300
    Send, {Tab}
    Send, %path1%\%path2%\%path3%\05_EXPORT_TEX
    Sleep, 300
    Send, ^b
    Sleep, 300
    MouseClick, left, 1710, 60, 1,
    Sleep, 300
    MouseClick, left, 1576, 555, 1,
    Send, %path1%/%path2%/%path3%/04_EXPORT_OBJ/LOD_00/%Projname2%_LOD_00.OBJ
    Sleep, 300
    MouseClick, left, 1576, 610, 1,
    Send, %path1%/%path2%/%path3%/04_EXPORT_OBJ/LOD_04/%Projname2%_LOD_05.OBJ
    Sleep, 300
    MouseClick, left, 1650, 275, 1,
    Send, %path1%/%path2%/%path3%/04_EXPORT_OBJ/LOD_04/%Projname2%_LOD_05.OBJ


    return
}

if not WinExist("Calculator")
    return
else
{
	msgbox,  LOL
    WinActivate  ; The above "IfWinNotExist" also set the "last found" window for us.
    return
}

Return
#IfWinActive


 ----------------------------------------------------------------------------------------------------------------
 ----  ZBRUSH LODs  --------------------------------------------------------------------
 ----------------------------------------------------------------------------------------------------------------


#IfWinActive, ahk_class CabinetWClass
+NumpadSub:: 
#IfWinActive, ahk_class ExploreWClass
+NumpadSub:: 
#IfWinActive

FormatTime, CurrentDateTime,, yyMMdd_

WinGetTitle, Title, A

windowtitle = %Title%

Stringsplit, path, windowtitle, \

Projpath = %path2%%path3%

Stringsplit, Projname, Projpath, _ 



;msgbox,  %path1%\%path2%\%path3%\05_EXPORT_TEX
;msgbox,  %path3%.ZPR
msgbox,  Export LODs
;FileAppend, Another line.`n, C:\Test_Source.txt
; The following example uses a continuation section to enhance readability and maintainability:

FileAppend,	
(
[If, 1,
[ISet,Tool:Geometry:SDiv,1] [FileNameSetNext,"%path1%\%path2%\%path3%\04_EXPORT_OBJ\LOD_00\%Projname2%_LOD_00.obj"][FileNameSetNext,"%path1%\%path2%\%path3%\04_EXPORT_OBJ\LOD_00\%Projname2%_LOD_00.obj"][IPress,Tool:Export]
[ISet,Tool:Geometry:SDiv,2] [FileNameSetNext,"%path1%\%path2%\%path3%\04_EXPORT_OBJ\LOD_01\%Projname2%_LOD_01.obj"][FileNameSetNext,"%path1%\%path2%\%path3%\04_EXPORT_OBJ\LOD_01\%Projname2%_LOD_01.obj"][IPress,Tool:Export]
[ISet,Tool:Geometry:SDiv,3] [FileNameSetNext,"%path1%\%path2%\%path3%\04_EXPORT_OBJ\LOD_02\%Projname2%_LOD_02.obj"][FileNameSetNext,"%path1%\%path2%\%path3%\04_EXPORT_OBJ\LOD_02\%Projname2%_LOD_02.obj"][IPress,Tool:Export]
[ISet,Tool:Geometry:SDiv,4] [FileNameSetNext,"%path1%\%path2%\%path3%\04_EXPORT_OBJ\LOD_03\%Projname2%_LOD_03.obj"][FileNameSetNext,"%path1%\%path2%\%path3%\04_EXPORT_OBJ\LOD_03\%Projname2%_LOD_03.obj"][IPress,Tool:Export]
[ISet,Tool:Geometry:SDiv,5] [FileNameSetNext,"%path1%\%path2%\%path3%\04_EXPORT_OBJ\LOD_04\%Projname2%_LOD_04.obj"][FileNameSetNext,"%path1%\%path2%\%path3%\04_EXPORT_OBJ\LOD_04\%Projname2%_LOD_04.obj"][IPress,Tool:Export]
[IPress,CLOSE]
]

), %path1%\%path2%\%path3%\03_PROGRAMS\DoItZScript.txt
Sleep, 100
;Run, %path1%\%path2%\%path3%\03_PROGRAMS\%path3%.ZPR
;Sleep, 10000
;msgbox,  Click OK when opened

WinActivate  ZBrush
Sleep, 500
Send, ^+l
Sleep, 250
MouseClick, left, 650, 45, 1, Relative
Sleep, 250
SendInput, %path1%\%path2%\%path3%\03_PROGRAMS\
Sleep, 250
Send, {Enter}
Sleep, 250
MouseClick, left, 600, 200, 1, Relative
Sleep, 250
Send, d
Sleep, 250
Send, {Enter}
Sleep, 250

;FileDelete, %path1%\%path2%\%path3%\03_PROGRAMS\DoItZScript.txt
;FileDelete, %path1%\%path2%\%path3%\03_PROGRAMS\DoItZScript.zsc

msgbox,  Exported
Return
#IfWinActive














/*
 		=ifs(M4<30,(10),and(M4>=30,M4<100),10,M4>=600;"Custom")
 		=ifs(B112<30,(10),and(B112>=30,B112<100),10,B112>=600;"Custom")



 		=ifs(ISBLANK(B113),(1),
 		and(B113=>0, 2),3,
 		 "","None")



M:\RC\190506_VelenjePuske\04_EXPORT_OBJ\LOD_00\VelenjePuske_LOD_00.obj

M:/RC/190506_VelenjePuske/04_EXPORT_OBJ/LOD_00/VelenjePuske_LOD_00.OBJ




M:/RC/190506_VelenjePuske/04_EXPORT_OBJ/LOD_00/VelenjePuske_LOD_00.obj
M:/RC/190506_VelenjePuske/04_EXPORT_OBJ/LOD_00/VelenjePuske_LOD_00.OBJ



 		=ifs(M4<30,(SUM(M7:M)*1),
 		and(M4>=30,M4<100),(SUM(M7:M)*1.20),
 		and(M4>=100,M4<400),(SUM(M7:M)*1.50),
 		and(M4>=400,M4<600),(SUM(M7:M)*1.75),
 		M4>=600;"Custom")
*/