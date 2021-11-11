:menu
@echo off
cls
echo.
echo Press 1 for Lemmings 2: The Tribes w/ Tandy
echo Press 2 for Lemmings 2: The Tribes w/ SoundBlaster
echo Press 3 for Lemmings 2: The Tribes w/ MT-32
echo Press 4 for Lemmings 2: The Tribes Demo
echo Press 5 to Quit
echo.
echo The demo contains a few exclusive levels
echo.
jchoice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto demo
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:TANDY

copy .\tandy\*.* .\
cls
@L2
goto quit

:SB16

xcopy /Y .\sb16\*.* .\ .\
cls
@L2
goto quit

:MT32
mt32-pi -m -v
xcopy /Y .\mt32\*.* .\ .\
cls
@L2
goto quit

:demo
cd l2
cls
@L2
goto quit

:quit
exit
