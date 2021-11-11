:menu
@echo off
cls
echo.
echo Press 1 for X-COM: Terror from the Deep w/ SoundBlaster
echo Press 2 for X-COM: Terror from the Deep w/ MT32
echo Press 3 for X-COM: Terror from the Deep w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd SOUND
del MUSIC.COM
del SOUND.CFG
del SOUNDRV.COM
copy .\sb16\*.*
cd ..
cls
@call RUNXCOM
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd SOUND
del MUSIC.COM
del SOUND.CFG
del SOUNDRV.COM
copy .\mt32\*.*
cd ..
cls
@call RUNXCOM
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd SOUND
del MUSIC.COM
del SOUND.CFG
del SOUNDRV.COM
copy .\sc55\*.*
cd ..
cls
@call RUNXCOM
goto quit

:quit
exit