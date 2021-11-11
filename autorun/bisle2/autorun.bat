@echo off
cls
echo.
echo Press 1 for Battle Isle 2
echo Press 2 for Battle Isle 2 Titan's Legacy
echo Press 3 to play Network Multiplayer
echo Press 4 to Quit
echo.
echo Note: Default volume options in Battle Isle 2 and Titan's Legacy
echo are not optimal. In gameplay, hold down the left button on the
echo control bar, click MENU, click MENU again, click SETTINGS, and
echo then go into Effects/Music. Change Music to MEDIUM and Effects to
echo LOUD. Once you create a save game, these options will be saved for
echo future sessions.
echo.
jchoice /C:1234 /n Please Choose:

if errorlevel = 4 goto end
if errorlevel = 3 goto network
if errorlevel = 2 goto scen
if errorlevel = 1 goto bi2

:bi2
cls
imgmount d ".\eXoDOS\bisle2\cd\BATTLEISLE2.cue" -t cdrom
cd BLUEBYTE
cd BI2
goto menu2

:scen
cls
cd BLUEBYTE
cd BI2
@imgmount d ".\eXoDOS\bisle2\cd\BATTLEISLE2_CD1.cue" -t cdrom
goto menu2

:network
cls
imgmount d ".\eXoDOS\bisle2\cd\BATTLEISLE2.cue" -t cdrom

cd BLUEBYTE
cd BI2
xcopy /Y .\sb16\*.* .\ .\
cd ..
cd ..
network
goto quit

:menu2
@echo off
cls
echo.
echo Press 1 for Battle Isle 2 w/ SoundBlaster
echo Press 2 for Battle Isle 2 w/ MT-32
echo Press 3 for Battle Isle 2 w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

xcopy /Y .\sb16\*.* .\ .\
cls
@call BI2
goto quit

:MT32
mt32-pi -m -v
xcopy /Y .\mt32\*.* .\ .\
cls
@call BI2
goto quit

:SC55
mt32-pi -g -v
xcopy /Y .\mt32\*.* .\ .\
cls
@call BI2
goto quit

:quit
exit
