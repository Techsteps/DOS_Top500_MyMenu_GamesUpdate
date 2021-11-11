:menu
@echo off
cls
echo.
echo Press 1 for Doom w/ Gravis Ultrasound
echo Press 2 for Doom w/ SoundBlaster
echo Press 3 for Doom w/ Sound Canvas
echo Press 4 to play Network Multiplayer
echo Press 5 to Quit
echo.
jchoice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto network
if errorlevel = 3 goto SC55
if errorlevel = 2 goto SB16
if errorlevel = 1 goto GUS

:GUS

del DEFAULT.CFG
copy .\gus\*.*
cd ultrasnd
ultramid
cd ..
cls
@DOOM
goto quit

:SB16

del DEFAULT.CFG
xcopy /Y .\sb16\*.* .\
cls
@DOOM
goto quit

:SC55
mt32-pi -g -v
del DEFAULT.CFG
xcopy /Y .\sc55\*.* .\
cls
@DOOM
goto quit

:network

del DEFAULT.CFG
xcopy /Y .\sb16\*.* .\
cls
network

:quit
exit
