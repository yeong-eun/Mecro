
Gui, Add, Tab, x5 y2 w350 h500 , Main|스킬
Gui, Tab, Main
Gui, Font, bold
Gui, Add, GroupBox, x20 y25 w140 h120 v팀설정 , 팀설정
Gui, Font, Norm
Gui, Add, CheckBox, x25 y45 w50 h20 v모험 , 모험
Gui, Add, CheckBox, x25 y64 w50 h20 v결투 , 결투
Gui, Add, CheckBox, x25 y85 w50 h20 v황금 , 황금
Gui, Add, DropDownList, x102 y45 w40 h60 vTeam1 , 1팀|2팀|3팀
Gui, Add, DropDownList, x102 y65 w40 h60 vTeam2 , 1팀|2팀|3팀
Gui, Add, DropDownList, x102 y85 w40 h60 vTeam3 , 1팀|2팀|3팀

Gui, Font, bold
Gui, Add, GroupBox, x20 y159 w140 h110 v열쇠구매 , 열쇠구매
Gui, Font, Norm
Gui, Add, CheckBox, x25 y179 w120 h20 v우편함체크 , 우편함체크
Gui, Add, CheckBox, x25 y199 w120 h20 v명예포인트 , 명예포인트
Gui, Add, CheckBox, x25 y219 w120 h20 v루비사용 , 루비사용

Gui, Font, bold
Gui, Add, GroupBox, x210 y25 w130 h190 v모험지역 , 모험지역
Gui, Font, Norm
Gui, Add, Radio, x222 y45 w100 h30 v아스드 , 아스드
Gui, Add, Radio, x222 y75 w100 h30 v달빛의섬 , 달빛의섬
Gui, Add, ComboBox, x222 y105 w100 h60 v영지 , 7-9|7-10

Gui, Add, Button, x232 y229 w80 h30 vbt설정 , 설정적용
Gui, Add, Button, x32 y279 w100 h40 vbt시작 , 시작(F1)
Gui, Add, Button, x132 y279 w100 h40 vbt리셋 , 리셋(F4)
Gui, Add, Button, x232 y279 w110 h40 vbt닫기 , 닫기(End)

Gui, Font, bold
Gui, Add, GroupBox, x20 y329 w310 h120 v플레이로그 , 플레이 로그
Gui, Font, Norm
Gui, Add, Text, x32 y349 w70 h20 , 모험
Gui, Add, Text, x60 y349 w80 h20 CRed +Left vC4
Gui, Add, Text, x32 y379 w70 h20 , 결투
Gui, Add, Text, x60 y379 w80 h20 Cblue +Left vC1, 
Gui, Add, Text, x32 y409 w70 h20 , 황금
Gui, Add, Text, x60 y409 w80 h20 Cblue +Left vC2, 

Gui, Font, bold
Gui, Add, Text, x200 y359 w80 h20 , 현재상황 :
Gui, Font, Norm
Gui, Add, Text, x222 y385 w90 h30 , Text

Gui, Font, bold
Gui, Add, Text, x240 y460 w70 h20 , By.KKyu
Gui, Font, Norm
; Generated using SmartGUI Creator 4.0
Gui, Show, x127 y87 h535 w377,
Return


button설정적용: 
gui,submit,nohide
if 모험 = 0
{
msgbox, 모험 비활성화
goto, 15
}
if 모험 = 1
{
msgbox, 모험 활성화
goto, 15
}
15: 
if (아스드 = 1)
{
msgbox, 아스드영지 모험 빵야☆
}
if(달빛의섬 = 1)
{
msgbox, 달빛영지 빵야★
}
Return


button시작(F1):
gui,submit,nohide
goto, save1

save1:
Imagesearch, vx,vy,0,0,A_ScreenWidth,A_ScreenHeight,*100 MacroTest\Mohum.jpg
if(ErrorLevel = 0)
{
  MouseClick, Left, %vx%, %vy% 
	sleep,3000
}
if(ErrorLevel = 1)
{
 MsgBox, 못찾음 
}

Imagesearch, vx,vy,0,0,A_ScreenWidth,A_ScreenHeight,*100 MacroTest\MohumStart.jpg
if(ErrorLevel = 0)
{
  MouseClick, Left, %vx%, %vy% 
	sleep,3000
}
if(ErrorLevel = 1)
{
 MsgBox, 못찾음 
}

Imagesearch, vx,vy,0,0,A_ScreenWidth,A_ScreenHeight,*100 MacroTest\2-1.jpg
if(ErrorLevel = 0)
{
  MouseClick, Left, %vx%, %vy% 
	sleep,3000
}
if(ErrorLevel = 1)
{
 MsgBox, 못찾음 
}

Imagesearch, vx,vy,0,0,A_ScreenWidth,A_ScreenHeight,*100 MacroTest\Ready.jpg
if(ErrorLevel = 0)
{
  MouseClick, Left, %vx%, %vy% 
	sleep,3000
}
if(ErrorLevel = 1)
{
 MsgBox, 못찾음 
}

Imagesearch, vx,vy,0,0,A_ScreenWidth,A_ScreenHeight,*100 MacroTest\Start.jpg
if(ErrorLevel = 0)
{
  MouseClick, Left, %vx%, %vy% 
	sleep,3000
}
if(ErrorLevel = 1)
{
 MsgBox, 못찾음 
}

return



button리셋(F4):
gui,submit,nohide
goto, save2

save2:
Imagesearch, vx,vy,0,0,A_ScreenWidth,A_ScreenHeight,*100 Junto.jpg
if(ErrorLevel = 0)
{
  MouseClick, Left, vx, vy
}
if(ErrorLevel = 1)
{
 MsgBox, 못찾음 
}
return

F1::
gui,submit,nohide
clipboard = %789%
clipwait
send, {ctrl down}
send, v
Send, {Enter}
send, {ctrl up}
Return
Guiclose:
exitapp





