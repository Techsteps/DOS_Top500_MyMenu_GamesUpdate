:menu
@echo off
cls
echo.
echo Press 1 for PGA Tour Golf w/ Game Blaster
echo Press 2 for PGA Tour Golf w/ MT-32
echo Press 3 to Quit
echo.
jchoice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto GB

:MT32
mt32-pi -m -v
cls
@golf
goto quit

:GB
CONFIG -set "sbtype=gb"
CONFIG -set "mpu401=none"

cls
@golf
goto quit

:quit
exit
