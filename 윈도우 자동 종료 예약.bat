@echo off

:setTime
cls
set /p sec=시간 입력:
if {%sec%} == {-1} goto setTime
if %sec% LSS 1 goto setTime
if %sec% GEQ 4294967290 goto setTime
goto run

:run
echo 윈도우가 %sec%초 뒤에 종료됩니다.
shutdown -s -t %sec%
set /p sel=취소하시겠습니까?(Y/N):
if /i '%sel%' == 'y' shutdown -a
if /i '%sel%' == 'n' goto exit
echo 취소되었습니다.
pause