:menu
@echo off
cls
echo.
echo Press 1 for Tyrian w/ SoundBlaster
echo Press 2 for Tyrian w/ Sound Canvas
echo Press 3 for Tyrian Christmas Mode w/ SoundBlaster
echo Press 4 for Tyrian Christmas Mode w/ Sound Canvas
echo Press 5 to play Network Multiplayer
echo Press 6 to Quit
echo.
jchoice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto network
if errorlevel = 4 goto XSC55
if errorlevel = 3 goto XSB16
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16

del TYRIAN.CFG
xcopy /Y .\sb16\*.* .\
cls
@TYRIAN
goto quit

:SC55
mt32-pi -g -v
del TYRIAN.CFG
xcopy /Y .\sc55\*.* .\
cls
@TYRIAN
goto quit

:XSB16

del TYRIAN.CFG
xcopy /Y .\sb16\*.* .\
cls
@file0001 yesxmas
goto quit

:XSC55
mt32-pi -g -v
del TYRIAN.CFG
xcopy /Y .\sc55\*.* .\
cls
@file0001 yesxmas
goto quit

:network

del TYRIAN.CFG
xcopy /Y .\sb16\*.* .\
cls
@network
goto quit

:quit
exit
