@echo off

:setTime
cls
set /p sec=�ð� �Է�:
if {%sec%} == {-1} goto setTime
if %sec% LSS 1 goto setTime
if %sec% GEQ 4294967290 goto setTime
goto run

:run
echo �����찡 %sec%�� �ڿ� ����˴ϴ�.
shutdown -s -t %sec%
set /p sel=����Ͻðڽ��ϱ�?(Y/N):
if /i '%sel%' == 'y' shutdown -a
if /i '%sel%' == 'n' goto exit
echo ��ҵǾ����ϴ�.
pause