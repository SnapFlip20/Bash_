@echo off

:checkUAC
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if not %errorlevel% == 0 (
    echo 관리자 권한으로 실행하십시오.
    pause
    exit
) else ( goto main )

:main
set /p sel1=작업관리자 실행을 차단하겠습니까?(실행중인 작업관리자는 종료됩니다.)(Y/N):
if /i '%sel1%' == 'y' goto disable
if /i '%sel1%' == 'n' goto exit

:disable
taskkill /f /im taskmgr.exe >nul 2>&1
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system /v disabletaskmgr /t reg_dword /d 1 /f >nul
echo 작업관리자 실행이 차단되었습니다.
set /p sel2=복구하시겠습니까?(Y/N):
if /i '%sel2%' == 'y' goto enable
if /i '%sel2%' == 'n' goto exit

:enable
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system /v disabletaskmgr /f >nul
echo 복구가 완료되었습니다.
pause