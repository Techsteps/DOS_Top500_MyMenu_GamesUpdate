:menu
@echo off
cls
echo.
echo Press 1 for King's Quest VII: The Princeless Bride w/ SoundBlaster
echo Press 2 for King's Quest VII: The Princeless Bride w/ MT32
echo Press 3 for King's Quest VII: The Princeless Bride w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd KQ7DOS
del RESOURCE.CFG
copy .\sb16\*.*
cls
@SIERRA -o .\RESOURCE.CFG
goto quit
cls

:MT32
CONFIG -set "mididevice=mt32"
cd KQ7DOS
del RESOURCE.CFG
copy .\mt32\*.*
cls
@SIERRA -o .\RESOURCE.CFG
goto quit
cls

:SC55
CONFIG -set "mididevice=fluidsynth"
cd KQ7DOS
del RESOURCE.CFG
copy .\sc55\*.*
cls
@SIERRA -o .\RESOURCE.CFG
goto quit
cls

:quit
exit