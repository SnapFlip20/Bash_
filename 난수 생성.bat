@echo off

:main
cls
set /p min=�ּ�:
set /a min=%min%
set /p max=�ִ�:
set /a max=%max%

set /a ranNum=%random%*(%max%-%min%+1)/32767+%min%

echo %ranNum%
pause >nul