:menu
@echo off
cls
echo.
echo Press 1 for Day of the Tentacle w/ SoundBlaster
echo Press 2 for Day of the Tentacle w/ MT-32
echo Press 3 for Day of the Tentacle w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

cls
cd dott.cd
dotta
pause
goto quit

:MT32
mt32-pi -m -v
cls
cd dott.cd
dottr
goto quit

:SC55
mt32-pi -g -v
cls
cd dott.cd
dottg
goto quit

:quit
exit
