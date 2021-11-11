:menu
@echo off
cls
echo.
echo Press 1 for Jurassic Park (Floppy) w/ SoundBlaster
echo Press 2 for Jurassic Park (Floppy) w/ MT-32
echo Press 3 for Jurassic Park (Floppy) w/ Sound Canvas
echo Press 4 for Jurassic Park CD Version
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CD
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd jp
copy .\sb16\*.* .\
cls
@call jp
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd jp
copy .\mt32\*.* .\
cls
@call jp
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd jp
copy .\sc55\*.* .\
cls
@call jp
goto quit

:CD
CONFIG -set "mididevice=default"
d:
cls
@call jp
goto quit

:quit
exit