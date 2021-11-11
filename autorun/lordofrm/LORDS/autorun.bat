:menu
@echo off
cls
echo.
echo Press 1 for Lords of the Realm w/ SoundBlaster
echo Press 2 for Lords of the Realm w/ MT-32
echo Press 3 for Lords of the Realm w/ Sound Canvas
echo Press 4 for Lords of the Realm CD Version w/ Soundblaster
echo Press 5 for Lords of the Realm CD Version w/ MT-32
echo Press 6 for Lords of the Realm CD Version w/ Sound Canvas
echo Press 7 to Quit
echo.
echo Options 4 is unique in that it features limited speech samples
echo not present with other configurations.
echo.
jchoice /C:1234567 /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 6 goto SC55CD
if errorlevel = 5 goto MT32CD
if errorlevel = 4 goto SB16CD
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

xcopy /Y .\sb16\*.* .\ .\
cls
@lords
goto quit

:MT32
mt32-pi -m -v
xcopy /Y .\mt32\*.* .\ .\
cls
@lords
goto quit

:SC55
mt32-pi -g -v
xcopy /Y .\sc55\*.* .\ .\
cls
@lords
goto quit

:CD
mt32-pi -g -v
CONFIG -SET "CYCLES=6000"
cd ..
cd lordscd
cls
@LORDS
goto quit

:SB16CD

CONFIG -SET "CYCLES=6000"
cd ..
cd lordscd
xcopy /Y .\sb16\*.* .\ .\
cls
@LORDS
goto quit

:MT32CD
mt32-pi -m -v
CONFIG -SET "CYCLES=6000"
cd ..
cd lordscd
xcopy /Y .\mt32\*.* .\ .\
cls
@LORDS
goto quit

:SC55CD
mt32-pi -g -v
CONFIG -SET "CYCLES=6000"
cd ..
cd lordscd
xcopy /Y .\sc55\*.* .\ .\
cls
@LORDS
goto quit

:quit
exit
