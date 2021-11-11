:menu
@echo off
cls
echo.
echo Press 1 for Jagged Alliance w/ SoundBlaster
echo Press 2 for Jagged Alliance w/ MT32
echo Press 3 for Jagged Alliance w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

del SOUND.CFG
xcopy /Y .\sb16\*.* .\
cls
@JA
goto quit

:MT32
mt32-pi -m -v
del SOUND.CFG
xcopy /Y .\mt32\*.* .\
cls
@JA
goto quit

:SC55
mt32-pi -g -v
del SOUND.CFG
xcopy /Y .\sc55\*.* .\
cls
@JA
goto quit

:quit
exit
