:menu
@echo off
cls
echo.
echo Press 1 for Strife: Quest for the Sigil w/ SoundBlaster
echo Press 2 for Strife: Quest for the Sigil w/ Sound Canvas
echo Press 3 to play Network Multiplayer
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto network
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16

cd STRIFE
del STRIFE.CFG
xcopy /Y .\sb16\*.* .\
cls
@call STRIFE
goto quit

:SC55
mt32-pi -g -v
cd STRIFE
del STRIFE.CFG
xcopy /Y .\sc55\*.* .\
cls
@call STRIFE
goto quit

:network

cd STRIFE
del STRIFE.CFG
xcopy /Y .\sb16\*.* .\
cd ..
cls
@call network
goto quit

:quit
exit
