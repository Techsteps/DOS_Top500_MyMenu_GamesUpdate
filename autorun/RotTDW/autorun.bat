:menu
@echo off
cls
echo.
echo Press 1 for Rise of the Triad w/ SoundBlaster
echo Press 2 for Rise of the Triad w/ Gravis Ultrasound
echo Press 3 for Rise of the Triad w/ Sound Canvas
echo Press 4 to play Network Multiplayer
echo Press 5 to Quit
echo.
jchoice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto network
if errorlevel = 3 goto SC55
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB16

:SB16
cd ROTT
xcopy /Y .\sb16\*.* .\ .\

cls
@ROTT
goto quit

:GUS
cd ROTT
copy .\gus\*.* .\

cls
@ROTT
goto quit

:SC55
cd ROTT
xcopy /Y .\sc55\*.* .\ .\
mt32-pi -g -v
cls
@ROTT
goto quit

:network
cd ROTT
xcopy /Y .\sb16\*.* .\ .\
cd ..

cls
@network
goto quit

:quit
exit
