@echo off

:checkUAC
rem ��ġ������ ������ �������� ����Ǿ����� Ȯ���ϴ� �κ�
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if not %errorlevel% == 0 (
    goto notUAC
) else ( goto passed )

:notUAC
cls
echo.
echo ������ �������� �������� �ʾҽ��ϴ�.
set /p sel=������ �������� �����Ͻðڽ��ϱ�?(Y/N):
if /i '%sel%' == 'y' goto getUAC
if /i '%sel%' == 'n' goto exit
goto notUAC

:getUAC
rem �ӽ÷� vbs ������ ����� ������ �������� �ٽ� �����ϰ� �ϴ� �κ�
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\temp_vbs.vbs"
set params = %*:"=""
echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\temp_vbs.vbs"
"%temp%\temp_vbs.vbs"
del "%temp%\temp_vbs.vbs"
exit /b
goto checkUAC

:passed
cls
echo.
echo ������ �������� �����ϼ̽��ϴ�.
pause