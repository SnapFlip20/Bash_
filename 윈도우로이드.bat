@echo off

:main
cls
echo ���α׷��� �����Ϸ��� Ctrl+C Ű�� ��������.
set /p spk=������ �Է��ϼ���:
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