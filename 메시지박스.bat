@echo off

rem vbOkOnly
echo msgbox "�޽����ڽ� ����0", 0, "�޽����ڽ� ����" > msgbox_vbs0.vbs
start msgbox_vbs0
pause

rem vbOKCancel
echo msgbox "�޽����ڽ� ����1", 1, "�޽����ڽ� ����" > msgbox_vbs1.vbs
start msgbox_vbs1
pause

rem vbAboutRetryIgnore
echo msgbox "�޽����ڽ� ����2", 2, "�޽����ڽ� ����" > msgbox_vbs2.vbs
start msgbox_vbs2
pause

rem vbYesNoCancel
echo msgbox "�޽����ڽ� ����3", 3, "�޽����ڽ� ����" > msgbox_vbs3.vbs
start msgbox_vbs3
pause

rem vbYesNo
echo msgbox "�޽����ڽ� ����4", 4, "�޽����ڽ� ����" > msgbox_vbs4.vbs
start msgbox_vbs4
pause

rem vbRetryCancel
echo msgbox "�޽����ڽ� ����5", 5, "�޽����ڽ� ����" > msgbox_vbs5.vbs
start msgbox_vbs5
pause

rem vbCritical
echo msgbox "�޽����ڽ� ����16", 16, "�޽����ڽ� ����" > msgbox_vbs16.vbs
start msgbox_vbs16
pause

rem vbQuestion
echo msgbox "�޽����ڽ� ����32", 32, "�޽����ڽ� ����" > msgbox_vbs32.vbs
start msgbox_vbs32
pause

rem vbExclamation
echo msgbox "�޽����ڽ� ����48", 48, "�޽����ڽ� ����" > msgbox_vbs48.vbs
start msgbox_vbs48
pause

rem vbInformation
echo msgbox "�޽����ڽ� ����64", 64, "�޽����ڽ� ����" > msgbox_vbs64.vbs
start msgbox_vbs64
pause

del msgbox_vbs0.vbs
del msgbox_vbs1.vbs
del msgbox_vbs2.vbs
del msgbox_vbs3.vbs
del msgbox_vbs4.vbs
del msgbox_vbs5.vbs
del msgbox_vbs16.vbs
del msgbox_vbs32.vbs
del msgbox_vbs48.vbs
del msgbox_vbs64.vbs
