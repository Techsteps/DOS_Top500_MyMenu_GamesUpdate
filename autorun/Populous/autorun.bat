:menu
@echo off
cls
echo.
echo Press 1 for Populous w/ SoundBlaster
echo Press 2 for Populous w/ MT-32
echo Press 3 for Network Multiplayer
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto network
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16

cd POPULOUS
xcopy /Y .\sb16\*.* .\ .\
cls
@populous.exe VGA Adlib Sound 
goto quit

:MT32
mt32-pi -m -v
cd POPULOUS
xcopy /Y .\mt32\*.* .\ .\
cls
@populous.exe VGA Roland MT-32
goto quit

:network

cd POPULOUS
xcopy /Y .\sb16\*.* .\ .\
cd ..
cls
@network
goto quit

:quit
exit
