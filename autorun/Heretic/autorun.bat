:menu
@echo off
cls
echo.
echo Press 1 for Heretic w/ SoundBlaster
echo Press 2 for Heretic w/ Sound Canvas
echo Press 3 to play Network Multiplayer
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto network
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
cd heretic

del DEFAULT.CFG
xcopy /Y .\sb16\*.* .\
cls
@HERETIC
goto quit

:SC55
cd heretic
mt32-pi -g -v
del DEFAULT.CFG
xcopy /Y .\sc55\*.* .\
cls
@HERETIC
goto quit

:network
cd heretic

del DEFAULT.CFG
xcopy /Y .\sb16\*.* .\
cd ..
cls
@network
goto quit

:quit
exit
