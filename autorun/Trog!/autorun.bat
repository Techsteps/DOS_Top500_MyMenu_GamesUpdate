:menu
@echo off
cls
echo.
echo Press 1 for Trog! w/ SoundBlaster
echo Press 2 for Trog! w/ MT-32
echo Press 3 to Quit
echo.
jchoice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mpu401=none"

xcopy /Y .\sb16\*.* .\ .\
cls
@call trog
goto quit

:MT32
CONFIG -set "sbtype=none"
mt32-pi -m -v
xcopy /Y .\mt32\*.* .\ .\
cls
@call trog
goto quit

:quit
exit
