:menu
@echo off
cls
echo.
echo Press 1 for Where in the World is Carmen Sandiego CD w/ SoundBlaster
echo Press 2 for Where in the World is Carmen Sandiego CD w/ MT-32
echo Press 3 to Quit
echo.
jchoice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

xcopy /Y .\sb16\*.* .\ .\
cls
@call CARMEN
goto quit

:MT32
mt32-pi -m -v
xcopy /Y .\mt32\*.* .\ .\
cls
@call CARMEN
goto quit

:quit
exit
