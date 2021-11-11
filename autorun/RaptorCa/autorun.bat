:menu
@echo off
cls
echo.
echo Press 1 for Raptor: Call of the Shadows w/ SoundBlaster
echo Press 2 for Raptor: Call of the Shadows w/ Gravis Ultra Sound
echo Press 3 for Raptor: Call of the Shadows w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

xcopy /Y .\sb16\*.* .\ .\
cls
@RAP
goto quit

:MT32

copy .\gus\*.* .\
cls
@RAP
goto quit

:SC55
mt32-pi -g -v
xcopy /Y .\sc55\*.* .\ .\
cls
@RAP
goto quit

:quit
exit
