:menu
@echo off
cls
echo.
echo Press 1 for Strike Commander w/ SoundBlaster
echo Press 2 for Strike Commander w/ MT-32
echo Press 3 for Strike Commander w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

del SC.CFG
del SCTO1.CFG
xcopy /Y .\sb16\*.* .\
cls
@SCCD
goto quit

:MT32
mt32-pi -m -v
del SC.CFG
del SCTO1.CFG
xcopy /Y .\mt32\*.* .\
cls
@SCCD
goto quit

:SC55
mt32-pi -g -v
del SC.CFG
del SCTO1.CFG
xcopy /Y .\sc55\*.* .\
cls
@SCCD
goto quit

:quit
exit
