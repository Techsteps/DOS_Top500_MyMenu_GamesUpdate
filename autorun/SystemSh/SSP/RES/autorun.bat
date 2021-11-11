:menu
@echo off
cls
echo.
echo Press 1 for w/ SoundBlaster
echo Press 2 for w/ Sound Canvas
echo Press 3 to Quit
echo.
echo Note: New games default to a low resolution. Once you start
echo hit ESC, select VIDEO, VIDEO MODE, and then you can increase
echo your resolution.
echo.
jchoice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16

del CYB.CFG
xcopy /Y .\sb16\*.* .\
cls
@CDSHOCK
goto quit

:SC55
mt32-pi -g -v
del CYB.CFG
xcopy /Y .\sc55\*.* .\
cls
@CDSHOCK
goto quit

:quit
exit
