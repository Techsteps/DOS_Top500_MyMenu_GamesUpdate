:menu
@echo off
cls
echo.
echo Press 1 for Transport Tycoon Deluxe w/ SoundBlaster
echo Press 2 for Transport Tycoon Deluxe w/ MT32
echo Press 3 for Transport Tycoon Deluxe w/ Sound Canvas
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

cd TTDLX
del MUSIC.COM
del SOUND.CFG
del SOUND.COM
del SOUNDRV.COM
xcopy /Y .\sb16\*.* .\
cls
@TYCOON
goto quit

:MT32
mt32-pi -m -v
cd TTDLX
del MUSIC.COM
del SOUND.CFG
del SOUND.COM
del SOUNDRV.COM
xcopy /Y .\mt32\*.* .\
cls
@TYCOON
goto quit

:SC55
mt32-pi -g -v
cd TTDLX
del MUSIC.COM
del SOUND.CFG
del SOUND.COM
del SOUNDRV.COM
xcopy /Y .\sc55\*.* .\
cls
@TYCOON
goto quit

:network

cd TTDLX
del MUSIC.COM
del SOUND.CFG
del SOUND.COM
del SOUNDRV.COM
xcopy /Y .\sb16\*.* .\
cd ..
cls
@call network
goto quit

:quit
exit
