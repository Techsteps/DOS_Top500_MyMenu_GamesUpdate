:menu
@echo off
cls
echo.
echo Press 1 for Theme Park w/ SoundBlaster
rem echo Press 2 for Theme Park w/ MT-32
echo Press 2 for Theme Park w/ Sound Canvas
echo Press 3 to Quit
echo.
echo This game has a High res mode that can be activitaed by
echo pressing R when in game. This will require increased cycles
echo however, so follow this by pressing Ctrl-f12 one time.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
rem if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del SNDSETUP.INF
copy .\sb16\*.*
cls
@call THEME
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del SNDSETUP.INF
copy .\mt32\*.*
cls
@call THEME
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del SNDSETUP.INF
copy .\sc55\*.*
cls
@call THEME
goto quit

:quit
exit