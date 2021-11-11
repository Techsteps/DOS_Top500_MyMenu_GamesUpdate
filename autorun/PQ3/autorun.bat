:menu
@echo off
cls
echo.
echo Press 1 for Police Quest 3: The Kindred w/ SoundBlaster
echo Press 2 for Police Quest 3: The Kindred w/ MT32
echo Press 3 for Police Quest 3: The Kindred EGA w/ Game Blaster
echo Press 4 for Police Quest 3: The Kindred EGA w/ SoundBlaster
echo Press 5 for Police Quest 3: The Kindred EGA w/ MT32
echo Press 6 to Quit
echo.
jchoice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto EGAMT32
if errorlevel = 4 goto EGASB
if errorlevel = 3 goto EGAGB
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB

@pq3 SESOURCE.CFG
cls
goto quit

:MT32
mt32-pi -m -v
@pq3 MESOURCE.CFG
cls
goto quit

:EGAGB

CONFIG -set "sbtype=gb"
cd ega
@SCIDUV GESOURCE.CFG
cls
goto quit

:EGASB

cd ega
@SCIDUV SESOURCE.CFG
cls
goto quit

:EGAMT32
mt32-pi -m -v
cd ega
@SCIDUV MESOURCE.CFG
cls
goto quit

:quit
exit
