:menu
@echo off
cls
echo.
echo Press 1 for Transport Tycoon Deluxe w/ SoundBlaster
echo Press 2 for Transport Tycoon Deluxe w/ MT32
echo Press 3 for Transport Tycoon Deluxe w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del MUSIC.COM
del SOUND.CFG
del SOUND.COM
del SOUNDRV.COM
copy .\sb16\*.*
cls
@TYCOON
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del MUSIC.COM
del SOUND.CFG
del SOUND.COM
del SOUNDRV.COM
copy .\mt32\*.*
cls
@TYCOON
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del MUSIC.COM
del SOUND.CFG
del SOUND.COM
del SOUNDRV.COM
copy .\sc55\*.*
cls
@TYCOON
goto quit

:quit
exit