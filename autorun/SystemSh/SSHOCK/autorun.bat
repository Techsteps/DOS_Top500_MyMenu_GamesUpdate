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
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del CYB.CFG
copy .\sb16\*.*
cls
goto game

:SC55
CONFIG -set "mididevice=fluidsynth"
del CYB.CFG
copy .\sc55\*.*
cls
goto game

:game
@echo off
cls
echo.
echo Press 1 CD Enhanced version
echo Press 2 Original version
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto Orig
if errorlevel = 1 goto CD

:CD
cls
call CDSHOCK.BAT
goto quit

:Orig
cls
CALL SSHOCK.BAT
goto quit

:quit
exit