@echo off

:main
cls
set /p min=최소:
set /a min=%min%
set /p max=최대:
set /a max=%max%

set /a ranNum=%random%*(%max%-%min%+1)/32767+%min%

echo %ranNum%
pause >nul