@echo off

:checkUAC
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if not %errorlevel% == 0 (
    echo ������ �������� �����Ͻʽÿ�.
    pause
    exit
) else ( goto main )

:main
set /p sel1=�۾������� ������ �����ϰڽ��ϱ�?(�������� �۾������ڴ� ����˴ϴ�.)(Y/N):
if /i '%sel1%' == 'y' goto disable
if /i '%sel1%' == 'n' goto exit

:disable
taskkill /f /im taskmgr.exe >nul 2>&1
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system /v disabletaskmgr /t reg_dword /d 1 /f >nul
echo �۾������� ������ ���ܵǾ����ϴ�.
set /p sel2=�����Ͻðڽ��ϱ�?(Y/N):
if /i '%sel2%' == 'y' goto enable
if /i '%sel2%' == 'n' goto exit

:enable
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system /v disabletaskmgr /f >nul
echo ������ �Ϸ�Ǿ����ϴ�.
pause