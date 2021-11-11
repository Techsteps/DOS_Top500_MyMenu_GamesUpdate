:menu
@echo off
cls
echo.
echo Press 1 for Mortal Kombat w/ SoundBlaster
echo Press 2 for Mortal Kombat w/ MT-32
echo Press 3 for Mortal Kombat CD
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd kombat
copy .\sb16\*.* .\
cls
@call play
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd kombat
copy .\mt32\*.* .\
cls
@call play
goto quit

:SC55
CONFIG -set "mididevice=default"
cd MK1
cls
@mk1
goto quit

:quit
exit