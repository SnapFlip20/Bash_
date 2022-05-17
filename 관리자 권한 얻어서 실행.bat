@echo off

:checkUAC
rem 배치파일이 관리자 권한으로 실행되었는지 확인하는 부분
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if not %errorlevel% == 0 (
    goto notUAC
) else ( goto passed )

:notUAC
cls
echo.
echo 관리자 권한으로 실행하지 않았습니다.
set /p sel=관리자 권한으로 실행하시겠습니까?(Y/N):
if /i '%sel%' == 'y' goto getUAC
if /i '%sel%' == 'n' goto exit
goto notUAC

:getUAC
rem 임시로 vbs 파일을 만들어 관리자 권한으로 다시 실행하게 하는 부분
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
echo 관리자 권한으로 실행하셨습니다.
pause