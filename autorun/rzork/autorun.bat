:menu
@echo off
cls
echo.
echo Press 1 for Return to Zork w/ SoundBlaster
echo Press 2 for Return to Zork w/ MT32
echo Press 3 for Return to Zork w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd RTZ-CD
del MECH2.BAT
del RTZ.BAT
del RTZ.CFG
del SIMON.BAT
copy .\sb16\*.*
cls
call RTZ
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd RTZ-CD
del MECH2.BAT
del RTZ.BAT
del RTZ.CFG
del SIMON.BAT
copy .\mt32\*.*
cls
call RTZ
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd RTZ-CD
del MECH2.BAT
del RTZ.BAT
del RTZ.CFG
del SIMON.BAT
copy .\sc55\*.*
cls
call RTZ
goto quit

:quit
exit