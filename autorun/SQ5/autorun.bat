:menu
@echo off
cls
echo.
echo Press 1 for Space Quest V: The Next Mutation w/ SoundBlaster
echo Press 2 for Space Quest V: The Next Mutation w/ MT32
echo Press 3 for Space Quest V: The Next Mutation w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del RESOURCE.CFG
copy .\sb16\*.*
cls
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