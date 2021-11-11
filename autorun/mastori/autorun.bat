:menu
@echo off
cls
echo.
echo Press 1 for Master of Orion w/ SoundBlaster
echo Press 2 for Master of Orion w/ MT32
echo Press 3 for Master of Orion w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

del CONFIG.MOO
xcopy /Y .\sb16\*.* .\
cls
@ORION
goto quit

:MT32
mt32-pi -m -v
del CONFIG.MOO
xcopy /Y .\mt32\*.* .\
cls
@ORION
goto quit

:SC55
mt32-pi -g -v
del CONFIG.MOO
xcopy /Y .\sc55\*.* .\
cls
@ORION
goto quit

:quit
exit
