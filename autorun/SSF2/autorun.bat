:menu
@echo off
cls
echo.
echo Press 1 for Super Street Fighter II w/ SoundBlaster
echo Press 2 for Super Street Fighter II w/ MT-32
echo Press 3 for Super Street Fighter II w/ Sound Canvas
echo Press 4 for Network Multiplayer
echo Press 5 to Quit
echo.
jchoice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto network
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

@cd SSF2
cd drv
xcopy /Y .\sb16\*.* .\ .\
cd ..
cls
@SSF
goto quit

:MT32
mt32-pi -m -v
@cd SSF2
cd drv
xcopy /Y .\mt32\*.* .\ .\
cd ..
cls
@SSF
goto quit

:SC55
mt32-pi -g -v
@cd SSF2
cd drv
xcopy /Y .\sc55\*.* .\ .\
cd ..
cls
@SSF
goto quit

:network

@cd SSF2
cd drv
xcopy /Y .\sb16\*.* .\ .\
cd ..
cd ..
cls
@call network
goto quit

:quit
exit
