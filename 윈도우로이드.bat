@echo off

:main
cls
echo 프로그램을 종료하려면 Ctrl+C 키를 누르세요.
set /p spk=문장을 입력하세요:
call :speak "%spk%"
goto main

:speak
(
echo/Dim Windroid
echo/Set Windroid = WScript.CreateObject^("SAPI.SpVoice"^)
echo/Windroid.Speak "%~1"
) > Windroid.vbs
echo/%~1
cscript //nologo Windroid.vbs&del Windroid.vbs
cls