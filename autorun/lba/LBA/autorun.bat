:menu
@echo off
cls
echo.
echo Press 1 for Little Big Adventure w/ SoundBlaster
echo Press 2 for Little Big Adventure w/ Gravis Ultrasound
echo Press 3 for Little Big Adventure w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@LBA
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@LBA
goto quit

:GUS
CONFIG -set "mididevice=default"
copy .\gus\*.* .\
cls
@LBA
goto quit

:quit
exit