:menu
@echo off
cls
echo.
echo Press 1 for King's Quest VI: Heir Gone Tomorrow w/ SoundBlaster
echo Press 2 for King's Quest VI: Heir Gone Tomorrow w/ Gravis Ultrasound
echo Press 3 for King's Quest VI: Heir Gone Tomorrow w/ MT32
echo Press 4 for King's Quest VI: Heir Gone Tomorrow w/ Sound Canvas
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto SC55
if errorlevel = 3 goto MT32
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del RESOURCE.CFG
copy .\sb16\*.*
cls
@SIERRA
goto quit
cls

:GUS
CONFIG -set "mididevice=default"
del RESOURCE.CFG
copy .\gus\*.*
cls
LH ULTRAMID -C -M100
@SIERRA
goto quit
cls

:MT32
CONFIG -set "mididevice=mt32"
del RESOURCE.CFG
copy .\mt32\*.*
cls
@SIERRA
goto quit
cls

:SC55
CONFIG -set "mididevice=fluidsynth"
del RESOURCE.CFG
copy .\sc55\*.*
cls
@SIERRA
goto quit
cls

:quit
exit