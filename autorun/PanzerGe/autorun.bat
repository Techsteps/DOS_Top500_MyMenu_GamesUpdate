:menu
@echo off
cls
echo.
echo Press 1 for Panzer General w/ SoundBlaster
echo Press 2 for Panzer General w/ Sound Canvas
echo Press 3 to Quit
echo.
jchoice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16

cd PG
cd EXE
del SOUND.CFG
xcopy /Y .\sb16\*.* .\
cls
@PANZER
goto quit

:SC55
mt32-pi -g -v
cd PG
cd EXE
del SOUND.CFG
xcopy /Y .\sc55\*.* .\
cls
@PANZER
goto quit

:quit
exit
