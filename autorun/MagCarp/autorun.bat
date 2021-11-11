:menu
@echo off
cls
echo.
echo Press 1 for Magic Carpet w/ SoundBlaster
echo Press 2 for Magic Carpet w/ MT32
echo Press 3 for Magic Carpet w/ Sound Canvas
echo Press 4 for Network Multiplayer
echo Press 5 to Quit
echo.
echo Note: MT32 Has no music in the intro. It appears to
echo play properly in-game however.
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto network
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd CARPET.CD
del SNDSETUP.DAT
del SNDSETUP.INF
copy .\sb16\*.*
cd ..
cls
echo.
echo Pressing "r" during gameplay will turn on Hi-Res mode, however the game will run
echo incredibly slow unless you increase the speed of DOSBox by pressing CTRL-F12.
echo.
pause
@carpet
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd CARPET.CD
del SNDSETUP.DAT
del SNDSETUP.INF
copy .\mt32\*.*
cd ..
cls
echo.
echo Pressing "r" during gameplay will turn on Hi-Res mode, however the game will run
echo incredibly slow unless you increase the speed of DOSBox by pressing CTRL-F12.
echo.
pause
@carpet
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd CARPET.CD
del SNDSETUP.DAT
del SNDSETUP.INF
copy .\sc55\*.*
cd ..
cls
echo.
echo Pressing "r" during gameplay will turn on Hi-Res mode, however the game will run
echo incredibly slow unless you increase the speed of DOSBox by pressing CTRL-F12.
echo.
pause
@carpet
goto quit

:network
CONFIG -set "mididevice=default"
cd CARPET.CD
del SNDSETUP.DAT
del SNDSETUP.INF
copy .\sb16\*.*
cd ..
cls
network

:quit
exit