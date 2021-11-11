:menu
@echo off
cls
echo.
echo Press 1 for Falcon 3.0 w/ SoundBlaster
echo Press 2 for Falcon 3.0 w/ MT-32
echo Press 3 to play Network Multiplayer
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto network
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

xcopy /Y .\sb16\*.* .\ .\
cls
@falcon3
goto quit

:MT32
mt32-pi -m -v
xcopy /Y .\mt32\*.* .\ .\
cls
@falcon3
goto quit

:network

xcopy /Y .\sb16\*.* .\ .\
cls
@network
goto quit

:quit
exit
