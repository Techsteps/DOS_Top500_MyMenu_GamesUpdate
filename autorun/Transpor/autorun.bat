:menu
@echo off
cls
echo.
echo Press 1 for Transport Tycoon w/ SoundBlaster
echo Press 2 for Transport Tycoon w/ MT32
echo Press 3 for Transport Tycoon w/ Sound Canvas
echo Press 4 for Network Multiplayer
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto network
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

:network
CONFIG -set "mididevice=default"
del MUSIC.COM
del SOUND.CFG
del SOUND.COM
del SOUNDRV.COM
copy .\sb16\*.*
cls
@call network
goto quit

:quit
exit