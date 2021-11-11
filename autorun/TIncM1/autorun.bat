:menu
@echo off
cls
echo.
echo Press 1 for The Incredible Machine w/ SoundBlaster
echo Press 2 for The Incredible Machine w/ MT32
echo Press 3 for The Incredible Machine w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

copy sesource.cfg resource.cfg
cls
@tim_k
goto quit

:MT32
mt32-pi -m -v
copy mesource.cfg resource.cfg
cls
@tim_k
goto quit

:SC55
mt32-pi -g -v
copy gesource.cfg resource.cfg
cls
@tim_k
goto quit

:quit
exit
