:menu
@echo off
cls
echo.
echo Press 1 for Hi-Octane w/ SoundBlaster
echo Press 2 for Hi-Octane w/ Gravis Ultrasound
echo Press 3 for Hi-Octane w/ MT-32
echo Press 4 for Hi-Octane w/ Sound Canvas
echo Press 5 to play Network Multiplayer
echo Press 6 to Quit
echo.
echo Resolution can be increased in the options menu. If you choose to do
echo this, you should also increase the cpu speed by pressing CTRL-F12 one time.
echo.
jchoice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto network
if errorlevel = 4 goto SC55
if errorlevel = 3 goto MT32
if errorlevel = 2 goto GRAVIS
if errorlevel = 1 goto SB16

:SB16

cd HIOCTANE.CD\sound
xcopy /Y .\sb16\*.* .\ .\
cd ..
cd ..
cd HIOCTANE
cls
@call HIOCTANE
goto quit

:GRAVIS

cd HIOCTANE.CD\sound
copy .\gus\*.* .\
cd ..
cd ..
cd HIOCTANE
cls
@call HIOCTANE
goto quit

:MT32
mt32-pi -m -v
cd HIOCTANE.CD\sound
xcopy /Y .\mt32\*.* .\ .\
cd ..
cd ..
cd HIOCTANE
cls
@call HIOCTANE
goto quit

:SC55
mt32-pi -g -v
cd HIOCTANE.CD\sound
xcopy /Y .\sc55\*.* .\ .\
cd ..
cd ..
cd HIOCTANE
cls
@call HIOCTANE
goto quit

:network

cd HIOCTANE.CD\sound
xcopy /Y .\sb16\*.* .\ .\
cd ..
cd ..
cls
@network
goto quit

:quit
exit
