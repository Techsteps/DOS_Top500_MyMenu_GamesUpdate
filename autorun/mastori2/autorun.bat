:menu
@echo off
cls
echo.
echo Press 1 for Master of Orion II: Battle at Antares w/ SoundBlaster
echo Press 2 for Master of Orion II: Battle at Antares w/ MT32
echo Press 3 for Master of Orion II: Battle at Antares w/ Sound Canvas
echo Press 4 to play Network Multiplayer
echo Press 5 to Quit
echo.
jchoice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto network
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

cd ORION2
del MDI.INI
xcopy /Y .\sb16\*.* .\
cls
@Orion2
goto quit

:MT32
mt32-pi -m -v
cd ORION2
del MDI.INI
xcopy /Y .\mt32\*.* .\
cls
@Orion2
goto quit

:SC55
mt32-pi -g -v
cd ORION2
del MDI.INI
xcopy /Y .\sc55\*.* .\
cls
@Orion2
goto quit

:network

cd ORION2
del MDI.INI
xcopy /Y .\sb16\*.* .\
cd ..
cls
@call network
goto quit

:quit
exit
