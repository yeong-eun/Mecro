
Gui, Add, Tab, x5 y2 w350 h500 , Main|��ų
Gui, Tab, Main
Gui, Font, bold
Gui, Add, GroupBox, x20 y25 w140 h120 v������ , ������
Gui, Font, Norm
Gui, Add, CheckBox, x25 y45 w50 h20 v���� , ����
Gui, Add, CheckBox, x25 y64 w50 h20 v���� , ����
Gui, Add, CheckBox, x25 y85 w50 h20 vȲ�� , Ȳ��
Gui, Add, DropDownList, x102 y45 w40 h60 vTeam1 , 1��|2��|3��
Gui, Add, DropDownList, x102 y65 w40 h60 vTeam2 , 1��|2��|3��
Gui, Add, DropDownList, x102 y85 w40 h60 vTeam3 , 1��|2��|3��

Gui, Font, bold
Gui, Add, GroupBox, x20 y159 w140 h110 v���豸�� , ���豸��
Gui, Font, Norm
Gui, Add, CheckBox, x25 y179 w120 h20 v������üũ , ������üũ
Gui, Add, CheckBox, x25 y199 w120 h20 v������Ʈ , ������Ʈ
Gui, Add, CheckBox, x25 y219 w120 h20 v����� , �����

Gui, Font, bold
Gui, Add, GroupBox, x210 y25 w130 h190 v�������� , ��������
Gui, Font, Norm
Gui, Add, Radio, x222 y45 w100 h30 v�ƽ��� , �ƽ���
Gui, Add, Radio, x222 y75 w100 h30 v�޺��Ǽ� , �޺��Ǽ�
Gui, Add, ComboBox, x222 y105 w100 h60 v���� , 7-9|7-10

Gui, Add, Button, x232 y229 w80 h30 vbt���� , ��������
Gui, Add, Button, x32 y279 w100 h40 vbt���� , ����(F1)
Gui, Add, Button, x132 y279 w100 h40 vbt���� , ����(F4)
Gui, Add, Button, x232 y279 w110 h40 vbt�ݱ� , �ݱ�(End)

Gui, Font, bold
Gui, Add, GroupBox, x20 y329 w310 h120 v�÷��̷α� , �÷��� �α�
Gui, Font, Norm
Gui, Add, Text, x32 y349 w70 h20 , ����
Gui, Add, Text, x60 y349 w80 h20 CRed +Left vC4
Gui, Add, Text, x32 y379 w70 h20 , ����
Gui, Add, Text, x60 y379 w80 h20 Cblue +Left vC1, 
Gui, Add, Text, x32 y409 w70 h20 , Ȳ��
Gui, Add, Text, x60 y409 w80 h20 Cblue +Left vC2, 

Gui, Font, bold
Gui, Add, Text, x200 y359 w80 h20 , �����Ȳ :
Gui, Font, Norm
Gui, Add, Text, x222 y385 w90 h30 , Text

Gui, Font, bold
Gui, Add, Text, x240 y460 w70 h20 , By.KKyu
Gui, Font, Norm
; Generated using SmartGUI Creator 4.0
Gui, Show, x127 y87 h535 w377,
Return


button��������: 
gui,submit,nohide
if ���� = 0
{
msgbox, ���� ��Ȱ��ȭ
goto, 15
}
if ���� = 1
{
msgbox, ���� Ȱ��ȭ
goto, 15
}
15: 
if (�ƽ��� = 1)
{
msgbox, �ƽ��念�� ���� ���ߡ�
}
if(�޺��Ǽ� = 1)
{
msgbox, �޺����� ���ߡ�
}
Return


button����(F1):
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
 MsgBox, ��ã�� 
}

Imagesearch, vx,vy,0,0,A_ScreenWidth,A_ScreenHeight,*100 MacroTest\MohumStart.jpg
if(ErrorLevel = 0)
{
  MouseClick, Left, %vx%, %vy% 
	sleep,3000
}
if(ErrorLevel = 1)
{
 MsgBox, ��ã�� 
}

Imagesearch, vx,vy,0,0,A_ScreenWidth,A_ScreenHeight,*100 MacroTest\2-1.jpg
if(ErrorLevel = 0)
{
  MouseClick, Left, %vx%, %vy% 
	sleep,3000
}
if(ErrorLevel = 1)
{
 MsgBox, ��ã�� 
}

Imagesearch, vx,vy,0,0,A_ScreenWidth,A_ScreenHeight,*100 MacroTest\Ready.jpg
if(ErrorLevel = 0)
{
  MouseClick, Left, %vx%, %vy% 
	sleep,3000
}
if(ErrorLevel = 1)
{
 MsgBox, ��ã�� 
}

Imagesearch, vx,vy,0,0,A_ScreenWidth,A_ScreenHeight,*100 MacroTest\Start.jpg
if(ErrorLevel = 0)
{
  MouseClick, Left, %vx%, %vy% 
	sleep,3000
}
if(ErrorLevel = 1)
{
 MsgBox, ��ã�� 
}

return



button����(F4):
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
 MsgBox, ��ã�� 
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





