:menu
@echo off
cls
echo.
echo Press 1 for The Incredible Machine 2 w/ SoundBlaster
echo Press 2 for The Incredible Machine 2 w/ MT32
echo Press 3 for The Incredible Machine 2 w/ Sound Canvas
echo Press 4 for The Incredible Machine 2 w/ CD Audio
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CDA
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy sesource.cfg resource.cfg
imgmount -u d
cls
@tim2
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy mesource.cfg resource.cfg
imgmount -u d
cls
@tim2
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy gesource.cfg resource.cfg
imgmount -u d
cls
@tim2
goto quit

:CDA
CONFIG -set "mididevice=mt32"
copy cesource.cfg resource.cfg
cls
@tim2
goto quit

:quit
exit