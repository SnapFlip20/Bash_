@echo off

rem vbOkOnly
echo msgbox "메시지박스 내용0", 0, "메시지박스 제목" > msgbox_vbs0.vbs
start msgbox_vbs0
pause

rem vbOKCancel
echo msgbox "메시지박스 내용1", 1, "메시지박스 제목" > msgbox_vbs1.vbs
start msgbox_vbs1
pause

rem vbAboutRetryIgnore
echo msgbox "메시지박스 내용2", 2, "메시지박스 제목" > msgbox_vbs2.vbs
start msgbox_vbs2
pause

rem vbYesNoCancel
echo msgbox "메시지박스 내용3", 3, "메시지박스 제목" > msgbox_vbs3.vbs
start msgbox_vbs3
pause

rem vbYesNo
echo msgbox "메시지박스 내용4", 4, "메시지박스 제목" > msgbox_vbs4.vbs
start msgbox_vbs4
pause

rem vbRetryCancel
echo msgbox "메시지박스 내용5", 5, "메시지박스 제목" > msgbox_vbs5.vbs
start msgbox_vbs5
pause

rem vbCritical
echo msgbox "메시지박스 내용16", 16, "메시지박스 제목" > msgbox_vbs16.vbs
start msgbox_vbs16
pause

rem vbQuestion
echo msgbox "메시지박스 내용32", 32, "메시지박스 제목" > msgbox_vbs32.vbs
start msgbox_vbs32
pause

rem vbExclamation
echo msgbox "메시지박스 내용48", 48, "메시지박스 제목" > msgbox_vbs48.vbs
start msgbox_vbs48
pause

rem vbInformation
echo msgbox "메시지박스 내용64", 64, "메시지박스 제목" > msgbox_vbs64.vbs
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
