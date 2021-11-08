:menu
@echo off
cls
echo.
echo Press 1 for A-10 Tank Killer w/ SoundBlaster
echo Press 2 for A-10 Tank Killer w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
xcopy /Y .\sb16\*.* .\
cls
@A10
goto quit

:MT32
mt32-pi -m -v
xcopy /Y .\mt32\*.* .\
cls
@A10
goto quit

:quit
exit